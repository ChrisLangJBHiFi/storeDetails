using Jbh.Location.Model;
using ServiceStack;
using StoreDetailsWeb.Common;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace StoreDetailsWeb.DataLayer
{
    public class LocationDAL
    {
        private static string _locationURL;
        private static string _appKey;

        public LocationDAL()
        {

            _locationURL = ConfigurationManager.AppSettings["LocationApiUrl"];
            _appKey = "3jBVkGG8tG7Lb3jVhYPUX1aB6gkWPM3E6dptIlF2";
        }
    

        public Location Add(Location apiLocation)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }





        public async Task<List<Location>> GetAll()
        {
            List<Location> locations = null;

            try
            {
                using (var client = new JsonServiceClient())
                {
                    client.Headers.Add("x-api-key", _appKey);
                    locations = client.Get<List<Location>>(_locationURL);
                }
         
            }
            catch
            {
                locations = new List<Location>();
                locations.Add(new Location() { Name = "Catch block", Id = 0 });
            }

            return locations;

        }



        public Location GetById(int locationId)
        {
            Location location = null;

            try
            {
                using (var client = new JsonServiceClient())
                {
                    client.Headers.Add("x-api-key", _appKey);
                    location = client.Get<Location>(_locationURL + locationId.ToString());
                }

                           
            }
            catch
            {


            }

            return location;
        }
        public Location Update(Location apiLocation)
        {

            using (var client = new JsonServiceClient())
            {
                client.Headers.Add("x-api-key", _appKey);
                var location = client.Put<Location>(_locationURL + apiLocation.Id, apiLocation);
            }
                      
            return apiLocation;
        }

    }
}