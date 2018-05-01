using Microsoft.SharePoint.Client;
using Newtonsoft.Json;
using StoreDetails.Models;
using StoreDetailsWeb.BusinessLogicLayer;
using StoreDetailsWeb.Common;
using StoreDetailsWeb.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static StoreDetailsWeb.Common.AppHelper;

namespace StoreDetailsWeb.Controllers
{
  
    public class HomeController : Controller
    {
    

        //[AuthorizeUser(AccessLevel = "IT Team")]

        public ActionResult StoreDetail(int id)
        {
            var model = LocationBL.GetById(id, TimeFormat.Hours12);

            return PartialView("_StoreDetail", model);

        }

        [HttpPost]
        public ActionResult StoreInfoEdit(string storeDetail, string type)
        {
            dynamic storeData = JsonConvert.DeserializeObject(storeDetail);

            var location = AppHelper.LocationMapFormJson(storeData, type);

            var updatedLocation = LocationBL.Update(location, type);
            updatedLocation = LocationBL.ApplyTimeFormat(updatedLocation, TimeFormat.Hours12);

            return PartialView("_StoreDetail", updatedLocation);
            //  return null;
        }


        public ActionResult Index()
        {

            AppModel appModel = new AppModel() { AreaManagers = new List<string>(), States = new List<string>() };

            try
            {
                appModel.StoreDetails = LocationBL.GetAll();

                if (appModel.StoreDetails != null)
                {
                    appModel.States = appModel.StoreDetails.Select(o => o.PhysicalAddress.State).Distinct().ToList();
                    //TODO
                    //Area Manager mapped with AdminEmail
                    appModel.AreaManagers = appModel.StoreDetails.Select(o => o.Email).Distinct().ToList();
                }
            }
            catch (Exception ex)
            {

            }
            return View(appModel);
        }

        public JsonResult Search(string term)
        {
            IList stores = LocationBL.GetAll().FindAll(x => x.Name.StartsWith(term, StringComparison.OrdinalIgnoreCase)).Select(a => a.Name).ToList();

            return Json(stores, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Get(int? page, int? limit, string sortBy, string direction, string name, string state, string areaManager)
        {
            int total;
            var predicate = PredicateBuilder.True<LocationModel>();


            if (!string.IsNullOrWhiteSpace(name))
            {
                predicate = predicate.And(q => q.Name.Contains(name));
            }

            if (!string.IsNullOrWhiteSpace(state))
            {
                predicate = predicate.And(q => q.PhysicalAddress.State != null && q.PhysicalAddress.State.Contains(state));
            }

            if (!string.IsNullOrWhiteSpace(areaManager))
            {
                predicate = predicate.And(q => q.Email != null && q.Email.Contains(areaManager));
            }

            List<LocationModel> records = null;

            if (page.HasValue && limit.HasValue)
            {
                int start = (page.Value - 1) * limit.Value;
                records = LocationBL.GetAll().AsQueryable().Where(predicate).OrderBy(o => o.Id).Skip(start).Take(limit.Value).ToList();
            }
            else
            {
                records = LocationBL.GetAll().AsQueryable().Where(predicate).OrderBy(o => o.Id).ToList();
            }

            total = LocationBL.GetAll().AsQueryable().Where(predicate).Count();

            return this.Json(new { records, total }, JsonRequestBehavior.AllowGet);
        }

    }
}
