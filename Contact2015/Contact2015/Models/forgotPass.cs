//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Contact2015.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class forgotPass
    {
        public int id { get; set; }
        public string email { get; set; }
        public string tempPassword { get; set; }
        public Nullable<int> status { get; set; }
        public Nullable<System.DateTime> modified { get; set; }
        public Nullable<System.DateTime> created { get; set; }
    }
}
