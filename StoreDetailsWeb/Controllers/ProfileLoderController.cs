using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StoreDetailsWeb.Controllers
{
    public class ProfileLoderController : Controller
    {

        [SharePointContextFilter]
        // GET: ProfileLoder
        public ActionResult Index()
        {
            return RedirectToAction("Index", "Home");
        
        }
    }
}