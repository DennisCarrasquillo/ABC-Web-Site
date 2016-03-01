using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ContactsDB;

namespace ABC_Inventory.Models.Marketing
{
    public class ContactModel
    {
        public List<Contacts> contacts { get; set; }
        public int Id { get; set; }
        public string ContactName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Cell { get; set; }
        public List<Notes> notes { get; set; }
    }
}