using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABC_Inventory.Models
{
    public class ActiveUser
    {
        public int ClientId { get; set;}
        public string UserId { get; set; }
        public String UserName { get; set; }
        public int UserRole { get; set; }

        public int PurchasingRole { get; set; }
        public int ItemRole { get; set; }
        public int SalesRole { get; set; }
        public int WarehouseRole { get; set; }
       
    }
}