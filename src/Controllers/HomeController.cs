using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClientDB;
using BLS_Inventory.Models;
using CATRAN_Mail;
namespace BLS_Inventory.Controllers
{
    public class HomeController : Controller
    {
        private BLS_ClientEntities1 db = new BLS_ClientEntities1(); 

        public ActionResult Index()
        {
            MailViewModel mvm = new MailViewModel();
            return View(mvm);
        }
        [HttpPost]
        public ActionResult Index(MailViewModel cvm)
        {
            ContactHistory ch = new ContactHistory();
            Common.CopyProperties(cvm, ch, false);
            ch.ContactDate = DateTime.Now;
            ch.BusinessName = cvm.ContactName;
            ch.Comments = cvm.Comments;
            ch.ContactName = "";
            ch.Phone = cvm.Phone;
            ch.Email = cvm.Email;
            db.ContactHistories.Add(ch);
            string Message = "";
            Message += "Date:" + ch.ContactDate + "\n\r";
            //Message += "Business Name: " + ch.BusinessName + "\n\r";
            Message += "Contact Name: " + ch.ContactName + "\n\r";
            Message += "Phone: " + ch.Phone + "\n\r";
            Message += "Email Addr: " + ch.Email + "\n\r";
            Message += "Message: " + ch.Comments + "\n\r";
            Class_Gmail mail = new Class_Gmail(ch.Email, ch.BusinessName, "ona1098@gmail.com", "Customer Service", "ona1098@gmail.com", "Hamster22");
            mail.Subject = "Inquiry";
            mail.Body = Message;
            mail.Send();
            db.SaveChanges();
            MailViewModel mvm = new MailViewModel();
            return View(mvm);
        }
        public ActionResult Inventory()
        {
            return View();
        }
        public ActionResult Purchasing()
        {
            return View();
        }
        public ActionResult Sales()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult PrivacyPolicy()
        {
            return View();
        }
        public ActionResult TermsOfUse()
        {
            return View();
        }
    }
}