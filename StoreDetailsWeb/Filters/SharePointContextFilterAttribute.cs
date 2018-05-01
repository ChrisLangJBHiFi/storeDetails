using Microsoft.SharePoint.Client;
using StoreDetailsWeb.Common;
using System;
using System.Web;
using System.Web.Mvc;

namespace StoreDetailsWeb
{
    /// <summary>
    /// SharePoint action filter attribute.
    /// </summary>
    public class SharePointContextFilterAttribute : ActionFilterAttribute
    {
                
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (filterContext == null)
            {
                throw new ArgumentNullException("filterContext");
            }

            Uri redirectUrl;
            switch (SharePointContextProvider.CheckRedirectionStatus(filterContext.HttpContext, out redirectUrl))
            {
                case RedirectionStatus.Ok:
                    GetSPUserDetails(filterContext.HttpContext, filterContext.Controller.ViewBag);
                    return;
                case RedirectionStatus.ShouldRedirect:
                    filterContext.Result = new RedirectResult(redirectUrl.AbsoluteUri);
                    break;
                case RedirectionStatus.CanNotRedirect:
                    filterContext.Result = new ViewResult { ViewName = "Error" };
                    break;
            }
        }
        
        private void GetSPUserDetails(HttpContextBase httpContextBase, dynamic viewBag)
        {

            var spContext = SharePointContextProvider.Current.GetSharePointContext(httpContextBase);

            viewBag.SPHostUrl = spContext.SPHostUrl.AbsoluteUri.TrimEnd('/');

            using (var clientContext = spContext.CreateUserClientContextForSPHost())
            {
                if (clientContext != null)
                {
                    User spUser = clientContext.Web.CurrentUser;
                    clientContext.Load(spUser, user => user.Title, user => user.UserId, user => user.Email);
                    clientContext.ExecuteQuery();
                    viewBag.UserName = spUser.Title;
                    viewBag.UserId = spUser.UserId;

            
                    var userprofile = AppHelper.GetUserProfile(spUser.Email);



                    HttpContext.Current.Session.Add("UserProfile", userprofile);

                    
                }
            }
        }
    }
}
