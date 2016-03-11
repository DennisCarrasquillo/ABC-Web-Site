using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ContactsDB;

namespace BLS_Inventory.Models.Marketing
{
    public class CompanyModel
    {
        public int Id { get; set; }
        public string CompanyName { get; set; }
        public string Cage { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string zip { get; set; }
        public List<Notes> notes { get; set; }
    }
}