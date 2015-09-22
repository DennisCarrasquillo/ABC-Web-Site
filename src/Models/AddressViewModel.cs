using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using ClientDB;
namespace ABC_Inventory.Models
{
    public class AddressViewModel
    {
        public Address_Types AddressType { get; set; }
        public int Id { get; set; }
        [Required]
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        [Required]
        public string City { get; set; }
        [Required]
        public string State { get; set; }
        public string Province { get; set; }
        public string Country { get; set; }
        [Required]
        public string PostalCode { get; set; }
    
    }
}