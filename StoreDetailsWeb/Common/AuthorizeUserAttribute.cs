using Microsoft.SharePoint.Client;
using StoreDetailsWeb.Models.AppData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace StoreDetailsWeb.Common
{
    public class AuthorizeUserAttribute : AuthorizeAttribute
    {
        public string AccessLevel { get; set; }

        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            
            var user=  (Userprofile)HttpContext.Current.Session["UserProfile"];

            bool hasAccess;
 
            if (user != null)
            {
                hasAccess = user.Roles.Contains(this.AccessLevel);

            }

            return user!=null;
        
        }

  
    }
}