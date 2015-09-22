using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ABC_Inventory.Models
{
    public class UserViewModel : ContactViewModel
    {
        public int ParentId { get; set; }
 
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [DataType(DataType.Password)]
        public string User_Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        public string Reenter_Password { get; set; }

    }

    public class LoginModel
    {
        [Required]
        [Display(Name = "User ID")]
        public string UserID { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Display(Name = "Remember Me")]
        public bool RememberMe { get; set; }

    }
}