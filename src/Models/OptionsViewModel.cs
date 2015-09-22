using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ABC_Inventory.Models
{
    public class OptionsViewModel
    {
        public string Subsystem { get; set; }
        public string Basis { get; set; }
        public String BillingFrequency { get; set; }
        public int RangeLow { get; set; }
        public int RangeHigh { get; set; }
        public decimal Price { get; set; }

    }

    public class OptionsListModel
    {
        public OptionsViewModel[] OptionsList { get; set; }
        public decimal totalPrice { get; set; }
    }
}