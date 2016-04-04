using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClientDB;
namespace BLS_Inventory.Models
{
    public class MailViewModel 
    {
        public int Id { get; set; }
        public string BusinessName { get; set; }
        public string ContactName { get; set; }
         public string Phone { get; set; }
        public string Email { get; set; }
        public string Comments { get; set; }
        public string Msg { get; set; }

    }
}