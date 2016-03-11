using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLS_Inventory.Models.Marketing
{
    public class ImportModel
    {
        public string FileNamee { get; set; }
        public int CompaniesImported { get; set; }
        public int CompaniesDuplicated { get; set; }
        public int ContactsImported { get; set; }
        public int ContactsDuplicated { get; set; }
        public int CompanyErrors { get; set; }
        public int ContactErrors { get; set; }
    }
}