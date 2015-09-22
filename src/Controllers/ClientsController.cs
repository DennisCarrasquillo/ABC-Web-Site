using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ABC_Inventory;
using ABC_Inventory.Models;
using ClientDB;
namespace ABC_Inventory.Controllers
{
    public class ClientsController : Controller
    {
        
        private ABC_ClientEntities1 db = new ABC_ClientEntities1(); 
        
       
        // GET: Clients
        public ActionResult Index()
        {
            
            return View(db.Clients.ToList());
        }

       
        //--------------------------------------------------------------------------------------------------
        public ActionResult RegisterView(int? Id)
        {
            ClientViewModel clientview = new ClientViewModel();
            var comptypes = from Business_Types c in Enum.GetValues(typeof(Business_Types))
                            select new { ID = (int)c, Name = c.ToString() };

           if (Id != null)
            {
                Client client = db.Clients.Find(Id);

                if (client != null)
                {
                    clientview.Clientname = client.Clientname;
                    clientview.Description = client.Description;
                    clientview.CageCode = client.CageCode;
                    clientview.SICCode = client.SICCode;
                    clientview.InActive = (client.InActive == false) ? false : (bool) client.InActive;
                    Address address = client.Addresses.FirstOrDefault();
                    if (address != null)
                    {
                        clientview.Address1 = address.Address1;
                        clientview.Address2 = address.Address2;
                        clientview.City = address.City;
                        clientview.State = address.State;
                        clientview.PostalCode = address.PostalCode;
                        clientview.Province = address.Province;
                        clientview.Country = address.Country;
                    }
                }
                ViewBag.Title = "Edit Client Information";
                
                ViewBag.CompanyType = new SelectList(comptypes,"ID", "Name", (int)client.CompanyType.Value);
            }
           else
           {
               ViewBag.Title = "Register New Client";
               ViewBag.CompanyType = new SelectList(comptypes, "ID", "Name");
           }
            return View(clientview);
        }

        [HttpPost]
        public ActionResult RegisterView(ClientViewModel clientview)
        {
             if (ModelState.IsValid)
            {
                int id = clientview.Id;
                Session["ParentId"] = id.ToString();
                Update_Client(clientview);

                if (clientview.Id == 0) 
                    return RedirectToAction("UserView");
            }
            return View(clientview);
        }

        [HttpGet]
        public ActionResult ClientProfile()
        {
            ClientViewModel clientview = new ClientViewModel();
            ActiveUser AU = (ActiveUser)Session["ActiveUser"];
            Client client = (from c in db.Clients
                             where c.Id == AU.ClientId
                             select c).FirstOrDefault();
            clientview.Id = client.Id;
            clientview.Description = client.Description;
            clientview.Clientname = client.Clientname;
            clientview.CageCode = client.CageCode;
            clientview.SICCode = client.SICCode;
            clientview.CompanyType = (Business_Types) client.CompanyType;
            Option opt = client.Options.FirstOrDefault();
            clientview.Purchasing = (bool)opt.Purchasing;
            clientview.Sales = (bool)opt.Sales;
            clientview.Warehouse = (bool)opt.Warehouse;
            Address addr = client.Addresses.FirstOrDefault();
            Common.CopyProperties(addr, clientview, false);
            return View(clientview);
        }

        [HttpPost]
        public ActionResult ClientProfile(ClientViewModel clientview)
        {

            return View(clientview);
        }

        public void Update_Client(ClientViewModel clientview)
        {
           Client client;
            client = (clientview.Id > 0) ? db.Clients.Find(clientview.Id) :  client = new Client();

            client.Clientname = clientview.Clientname;
            client.Description = clientview.Description;
            client.CageCode = clientview.CageCode;
            client.SICCode = clientview.SICCode;
            client.CompanyType = clientview.CompanyType;
            if (client.Status == null)
                client.Status = "DEMO";
            client.ExpDate = DateTime.Now.AddMonths(1);
            Address address;
 
            address = (clientview.Id > 0) ? client.Addresses.FirstOrDefault() : new Address();
                
            address.Address1 = clientview.Address1;
            address.Address2 = clientview.Address2;
            address.City = clientview.City;
            address.State = clientview.State;
            address.PostalCode = clientview.PostalCode;
            address.Province = clientview.Province;
            address.Country = clientview.Country;
            address.AddressType = Address_Types.Corporate;
            Option opts;
            opts = (clientview.Id > 0) ? client.Options.FirstOrDefault() : new Option();
            opts.Item = true;
            opts.Purchasing = clientview.Purchasing;
            opts.Sales = clientview.Sales;
            opts.Warehouse = clientview.Warehouse;

            if (clientview.Id > 0)
            {
                db.Entry(address).State = EntityState.Modified;
                db.Entry(client).State = EntityState.Modified;
                db.Entry(opts).State = EntityState.Modified;
             }
            else
            {
                License lic =  new License();
                lic.Maximum_Installs = 1;
                lic.Current_Installs = 0;
                lic.Cost = 0;
                lic.Period = 0;
                lic.DueDate = DateTime.Now.AddMonths(1);
                lic.ProductKey = Guid.NewGuid().ToString();
                client.Licenses.Add(lic);
                client.Addresses.Add(address);
                opts.Demo = true;
                opts.ExpDate = DateTime.Now.AddMonths(1);
                client.Options.Add(opts);
                db.Clients.Add(client);
            }

 
            try
            {
                db.SaveChanges();
                Session["ParentId"] = client.Id.ToString();
            }
            catch (DbEntityValidationException e)
            {
                return;
            }

        }

        public ActionResult UserView()
        {
            
            UserViewModel usermodel = new UserViewModel();
            if (Session["ParentId"] != null)
                usermodel.ParentId = Convert.ToInt32(Session["ParentId"]);
            else 
                usermodel.ParentId = 0;
            
            return View(usermodel);
        }

        [HttpPost]
        public ActionResult UserView(UserViewModel userviewmodel)
        {          
            using (var userinfo = new ABC_ClientEntities1())
            {
                var uinfo = (from u in userinfo.Users
                                    where u.UserId == userviewmodel.UserID
                                    select u).FirstOrDefault();
                if (uinfo != null)
                {
                    ModelState.AddModelError("UserId", "The User Id already exists.");
                    return View(userviewmodel);                  
                }
            }
            if (userviewmodel.User_Password != userviewmodel.Reenter_Password)
            {
                ModelState.AddModelError("User_Password", "Passwords do not match");
                return View(userviewmodel);
            }
            User user = new User();
            user.Client = db.Clients.Find(userviewmodel.ParentId);
            user.Name = userviewmodel.ContactName;
            user.UserId = userviewmodel.UserID;
            user.Password = userviewmodel.User_Password;
            user.Password_ExpireDate = DateTime.Now.AddMonths(3);
            Contact contact = new Contact();

            contact.CellPhone = userviewmodel.CellPhone;
            contact.ContactName = userviewmodel.ContactName;
            contact.ContactType = userviewmodel.ContactType;
            contact.Email = userviewmodel.Email;
            contact.Fax = userviewmodel.Fax;
            contact.Gender = userviewmodel.Gender;
            contact.Phone = userviewmodel.Phone;
            contact.Title = userviewmodel.Title;
            user.Contacts.Add(contact);
            db.Users.Add(user);

            db.SaveChanges();
            bool ret = Create_DataBase(user.UserId);
            return RedirectToAction("Index", "Home");        
        }
        private bool Create_DataBase(string UserId)
        {
            return true;
        }

        [HttpGet]
        public ActionResult UserProfile()
        {
            UserViewModel userview = new UserViewModel();
            ActiveUser AU = (ActiveUser)Session["ActiveUser"];
            User user = (from u in db.Users
                         where u.UserId == AU.UserId
                         select u).FirstOrDefault();
            Contact cont = user.Contacts.FirstOrDefault();
            Common.CopyProperties(cont, userview, false);
            //Address addr = cont.Addresses.FirstOrDefault();
            //Common.CopyProperties(addr, userview.Address, false);
            userview.Id = user.Id;
            return View(userview);
        }


        [HttpPost]
        public ActionResult UserProfile(UserViewModel userview)
        {
            
            ActiveUser AU = (ActiveUser)Session["ActiveUser"];
            User user = (from u in db.Users
                         where u.UserId == AU.UserId
                         select u).FirstOrDefault();
            if (userview.User_Password != "")
                user.Password = userview.User_Password;
            Contact cont = user.Contacts.FirstOrDefault();
            Common.CopyProperties(userview,cont, false);
            //Address addr = cont.Addresses.FirstOrDefault();
            //Common.CopyProperties(userview.Address,addr, false);
            //db.Entry(addr).State = EntityState.Modified;
            db.Entry(cont).State = EntityState.Modified;
            db.Entry(user).State = EntityState.Modified;
            db.SaveChanges();
            return View(userview);
        }

        public ActionResult Login()
        {
            LoginModel model = new LoginModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {              
                User uinfo = (from u in db.Users
                                where u.UserId == model.UserID && u.Password == model.Password 
                                select u).FirstOrDefault();
                if (uinfo == null)
                {
                    ModelState.AddModelError("Password", "Invalid Login User ID/Password.");
                    return View(model);
                }

                ActiveUser AU = new ActiveUser();
                AU.ClientId = uinfo.Client.Id;
                AU.UserId = model.UserID;
                Contact contact = uinfo.Contacts.FirstOrDefault();
                AU.UserName = contact.ContactName;

                //foreach (Roles R in uinfo.Roles)
                //{
                //    switch (R.SubSystem)
                //    {
                //        case SubSystem_Types.Purchasing:
                //            AU.PurchasingRole = R.Role;
                //            break;
                //        case SubSystem_Types.Sales:
                //            AU.SalesRole = R.Role;
                //            break;
                //        case SubSystem_Types.Warehouse:
                //            AU.WarehouseRole = R.Role;
                //            break;
                //        case SubSystem_Types.Item:
                //            AU.ItemRole = R.Role;
                //            break;
                //        case SubSystem_Types.admin:
                //            AU.UserRole = (int) SubSystem_Types.admin;
                //            break;
                //        case SubSystem_Types.Master:
                //            AU.UserRole = (int)SubSystem_Types.Master;
                //            break;
                //    }
                //}

                Session["ActiveUser"] = AU;
                Session.Timeout = 120;
                Response.Redirect("~/Home/Index", false);
            }
            return View(model);
        }

        public ActionResult LogOut(LoginViewModel model)
        {
            Session["ActiveUser"] = null;
            RedirectToAction("Index", "Home");
            return View();
        }

        public ActionResult Activate(int? id)
        {
            Client client = db.Clients.Find(id);
            client.InActive = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult InActivate(int? id)
        {
            Client client = db.Clients.Find(id);
            client.InActive = true;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult DownLoad()
        {
            DownloadViewModel down = new DownloadViewModel();
            ActiveUser AU = (ActiveUser)Session["Activeuser"];
            License lic = (from l in db.Licenses
                           where l.Client_Id == AU.ClientId
                           select l).FirstOrDefault();
            down.MaxInstalls = lic.Maximum_Installs;
            down.CurInstalls = lic.Current_Installs;
            SystemStat status = (from s in db.SystemStats
                                 select s).FirstOrDefault();
            down.LatestVersion = status.CurrentVersion;
            Installed inst = lic.Client.Installeds.FirstOrDefault();
            if (inst != null)
                down.InstalledVersion = inst.Version;
            return View(down);
        }
        //-------------------------------------------------------------------------------------------------------------------

        // POST: Clients/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create([Bind(Include = "Id,Clientname,Description,CageCode,SICCode,CompanyType")] Client client)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Clients.Add(client);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    return View(client);
        //}

        //// GET: Clients/Edit/5
        //public ActionResult Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Client client = db.Clients.Find(id);
            
        //    if (client == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(client);
        //}

        // POST: Clients/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id,Clientname,Description,CageCode,SICCode,CompanyType")] Client client)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(client).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(client);
        //}

        // GET: Clients/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Client client = db.Clients.Find(id);
        //    if (client == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(client);
        //}

        //// POST: Clients/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    Client client = db.Clients.Find(id);
        //    db.Clients.Remove(client);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
