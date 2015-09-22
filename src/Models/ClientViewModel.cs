using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using ClientDB;

namespace ABC_Inventory.Models
{
    public class ClientViewModel : AddressViewModel
    {
        public int Id { get; set; }
        [Required]
        public string Clientname { get; set; }
        public string Description { get; set; }
        public string CageCode { get; set; }
        public string SICCode { get; set; }
        public Business_Types CompanyType { get; set; }
        public bool InActive { get; set; }

        public bool Purchasing { get; set; }
        public bool Sales { get; set; }
        public bool Warehouse { get; set; }
        //public List<SubSystem> SubSystems { get; set; }
    }

    //public class SubSystem
    //{
    //    public bool UseFlag { get; set; }
    //    public SubSystem_Types System { get; set; }
    //    public Role_Types Role { get; set; }

       
    //}


}