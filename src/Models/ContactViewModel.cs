using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClientDB;
namespace ABC_Inventory.Models
{
    public class ContactViewModel : AddressViewModel
    {
        public int Id { get; set; }
        public string BusinessName { get; set; }
        public string Title { get; set; }
        public string ContactName { get; set; }
        public Gender_Types Gender { get; set; }
        public Contact_Types ContactType { get; set; }
         public string Phone { get; set; }
         public string CellPhone { get; set; }
         public string Fax { get; set; }
        public string Email { get; set; }
        public string Comments { get; set; }

    }
}