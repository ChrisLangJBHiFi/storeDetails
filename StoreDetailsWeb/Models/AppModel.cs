using StoreDetailsWeb.Common;
using StoreDetailsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreDetails.Models
{
    public class AppModel
    {
        public List<LocationModel> StoreDetails { get; set; }

        public List<string> States { get; set; }

        public List<string> AreaManagers { get; set; }
        
        public string SelectedState { get; set; }

        public string SelectedAreaManager { get; set; }

                

    }
}