using AutoMapper;
using Jbh.Location.Model;
using StoreDetailsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace StoreDetailsWeb
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Location, LocationModel>();
                cfg.CreateMap<LocationModel, Location>();

            });

            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
