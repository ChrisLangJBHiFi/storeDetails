using StoreDetailsWeb.Models.AppData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StoreDetailsWeb.Controllers
{
    public class WhoAmIController : Controller
    {
        // GET: WhoAmI
        public ActionResult Index()
        {
            var user = (Userprofile)Session["UserProfile"];
            return View(user);
        }
    }
}