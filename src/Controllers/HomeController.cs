using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClientDB;
namespace ABC_Inventory.Controllers
{
    public class HomeController : Controller
    {
        private ABC_ClientEntities1 db = new ABC_ClientEntities1(); 

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

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