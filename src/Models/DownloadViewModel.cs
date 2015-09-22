using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using ClientDB;

namespace ABC_Inventory.Models
{
    public class DownloadViewModel
    {
        
        public int MaxInstalls { get; set; }
        public int CurInstalls { get; set; }
        public string InstalledVersion { get; set; }
        public string LatestVersion { get; set; }

    }
}