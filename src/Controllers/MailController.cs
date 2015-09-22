using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ABC_Inventory.Models;
using ClientDB;
using CATRAN_Mail;

namespace ABC_Inventory.Controllers
{
    public class MailController : Controller
    {
        private ABC_ClientEntities1 db = new ABC_ClientEntities1();
        // GET: Contact
        public ActionResult MailView()
        {
            MailViewModel cvm = new MailViewModel();
            return View(cvm);
        }
        [HttpPost]
        public ActionResult MailView(MailViewModel cvm)
        {
            ContactHistory ch = new ContactHistory();
            Common.CopyProperties(cvm, ch, false);
            ch.ContactDate = DateTime.Now;
            db.ContactHistories.Add(ch);
            string Message = "";
            Message += "Date:" + ch.ContactDate + "\n\r";
            Message += "Business Name: " + ch.BusinessName + "\n\r";
            Message += "Contact Name: " + ch.ContactName + "\n\r";
            Message += "Phone: " + ch.Phone + "\n\r";
            Message += "Email Addr: " + ch.Email + "\n\r";
            Message += "Message: " + ch.Comments + "\n\r";
            Class_Gmail mail = new Class_Gmail(ch.Email, ch.ContactName, "ona1098@gmail.com", "Customer Service", "ona1098@gmail.com", "Rooster-22");
            mail.Subject = "Inquiry";
            mail.Body = Message;      
            mail.Send();      
            db.SaveChanges();
            return View(cvm);
        }
    }
}