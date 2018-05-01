using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreDetailsWeb.Models.AppData
{ 
        public class AppUser
        {
            public Userprofile UserProfile { get; set; }
            public bool IsSucess { get; set; }
            public object Message { get; set; }
        }

        public class Userprofile
        {
            public bool accountEnabled { get; set; }
            public object city { get; set; }
            public string companyName { get; set; }
            public object country { get; set; }
            public string department { get; set; }
            public string displayName { get; set; }
            public string employeeId { get; set; }
            public string givenName { get; set; }
            public string jobTitle { get; set; }
            public string mail { get; set; }
            public object officeLocation { get; set; }
            public object postalCode { get; set; }
            public object state { get; set; }
            public object streetAddress { get; set; }
            public string surname { get; set; }
            public string[] Roles { get; set; }
        }

    
}