using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ContactsDB;
using ABC_Inventory.Models.Marketing;
using System.IO;

namespace ABC_Inventory.Controllers.Marketing
{
    public class CompanyController : Controller
    {

        public List<CompanyModel> listcomps;
        // GET: Company
        public ActionResult Company()
        {
            //listcomps = (from c in )
            return View();
        }
        public ActionResult Import()
        {
            return View();
        }
        [HttpPost]
        public ActionResult FileUpload(HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                if (file == null)
                {
                    ModelState.AddModelError("File", "Please Upload Your file");
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
                        var path = Path.Combine(Server.MapPath("~/ImportFiles"), fileName);
                        file.SaveAs(path);
                        //ModelState.Clear();
                        ProcessImport(fileName);
                        //ViewBag.Message = "File uploaded successfully";
                    }
                }
            }
             return View();
        }
        private void ProcessImport(string fileName)
        {

        }
    }
}