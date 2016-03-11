﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ContactsDB;
using BLS_Inventory.Models.Marketing;
using System.IO;
using ETLProcess;
using Microsoft.Office.Interop.Excel;

namespace BLS_Inventory.Controllers.Marketing
{
    public class MarketingController : Controller
    {
        private BLS_MarketingEntities db = new BLS_MarketingEntities();
        public List<CompanyModel> listcomps;
       
        public ActionResult Import()
        {
            return View();
        }
        [HttpPost]
        public ActionResult FileUpload(HttpPostedFileBase file)
        {
            ImportModel im = new ImportModel();
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ModelState.AddModelError("File", "Please Upload Your File");
                }
                else if (file.ContentLength > 0)
                {
                    int MaxContentLength = 1024 * 1024 * 3; //3 MB
                    string[] AllowedFileExtensions = new string[] { ".csv", ".xls", ".xlsx", ".ods" };

                    if (!AllowedFileExtensions.Contains(file.FileName.Substring(file.FileName.LastIndexOf('.'))))
                    {
                        ModelState.AddModelError("File", "Please file of type: " + string.Join(", ", AllowedFileExtensions));
                    }

                    else if (file.ContentLength > MaxContentLength)
                    {
                        ModelState.AddModelError("File", "Your file is too large, maximum allowed size is: " + MaxContentLength + " MB");
                    }
                    else
                    {
                        //TO:DO
                        var fileName = Path.GetFileName(file.FileName);
                        var path = Path.Combine(Server.MapPath("~/ImportFiles/"), fileName);
                        file.SaveAs(path);
                        //ModelState.Clear();
                        im = ProcessImport(fileName);
                        //ViewBag.Message = "File uploaded successfully";
                    }
                }
            }
            return View("Import", im);
        }
        private ImportModel ProcessImport(string fileName)
        {
            ProcessFiles _fileImport = new ProcessFiles();
            var path = Path.Combine(Server.MapPath("~/ImportFiles/"), fileName);
        
            _fileImport.FilePath = path;
            string Extension = fileName.Split('.')[1];
            System.Data.DataTable dtBulk = null;
            switch (Extension)
            {
 
                case "csv":
                    _fileImport.ProcessCsvFile();
                    dtBulk = _fileImport.UploadedTable;
                    break;

                case "xls":
                case "xlsx":
                case "ods":
                    dtBulk = BLS_Inventory.Common.ExcelToTables(path);
                    break;
            }
            if (dtBulk == null)
                return(null);
            bool first = true;
            int compadded = 0;
            int compdupl = 0;
            int contadded = 0;
            int contdupl = 0;
            int comperrors = 0;
            int conterrors = 0;

            foreach (System.Data.DataRow row in dtBulk.Rows)
            {
                if (first)
                { 
                    first = false;
                    continue;
                }
                Companies company;
                Contacts contact;
                string compname = row.ItemArray[3].ToString();
                if (compname.Trim() == "")
                {
                    comperrors += 1;
                    continue;
                }
                string contemail = row.ItemArray[1].ToString();
                if (contemail.EndsWith(".gov"))
                {
                    conterrors += 1;
                    continue;
                }
                company = (from c in db.Companies
                           where c.CompanyName == compname
                           select c).FirstOrDefault();
                if (company == null)
                {
                    compadded += 1;
                    company = new Companies();
                    db.Companies.Add(company);
                }
                else
                    compdupl += 1;
                contact = (from c in company.Contacts
                           where c.email == contemail
                           select c).FirstOrDefault();
                if (contact == null)
                {
                    contadded += 1;
                    contact = new Contacts();
                    company.Contacts.Add(contact);
                }
                else
                    contdupl += 1;
                contact.Name = row.ItemArray[0].ToString();
                contact.email = row.ItemArray[1].ToString();
                company.Cage = row.ItemArray[2].ToString();
                company.CompanyName = row.ItemArray[3].ToString();
                contact.Phone = row.ItemArray[4].ToString();
                contact.Fax = row.ItemArray[5].ToString();
                company.Address1 = row.ItemArray[6].ToString();
                company.City = row.ItemArray[7].ToString();
                company.State = row.ItemArray[8].ToString();
                company.Zip = row.ItemArray[9].ToString();
                db.SaveChanges();
            }
            ImportModel im = new ImportModel();
            im.FileNamee = path + fileName;
            im.CompaniesImported = compadded;
            im.CompaniesDuplicated = compdupl;
            im.CompanyErrors = comperrors;
            im.ContactErrors = conterrors;
            im.ContactsDuplicated = contdupl;
            im.ContactsImported = contadded;
            return im;
        }
    }
}