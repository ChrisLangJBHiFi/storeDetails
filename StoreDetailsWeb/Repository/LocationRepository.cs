using AutoMapper;
using Jbh.Location.Model;
using StoreDetailsWeb.DataLayer;
using StoreDetailsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreDetailsWeb.Repository
{
    public class LocationRepository : ILocationRepository, IDisposable
    {
        LocationDAL locationDAL;
        public LocationModel Add(LocationModel location)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public List<LocationModel> GetAll()
        {

            locationDAL = new LocationDAL();
            var locationsDto = locationDAL.GetAll().Result;

            var locations = new List<LocationModel>();

            if (locationsDto != null)
            {

                foreach (var ldto in locationsDto)
                {

                    var location = Mapper.Map<LocationModel>(ldto);

                    locations.Add(location);
                }
            }



            return locations;

        }



        public LocationModel GetById(int locationId)
        {
            locationDAL = new LocationDAL();
            var locationDto = locationDAL.GetById(locationId);
            return Mapper.Map<LocationModel>(locationDto);
        }

        public LocationModel Update(LocationModel location)
        {
            locationDAL = new LocationDAL();
            var locationDto = Mapper.Map<Location>(location);
            locationDto.Timestamp = DateTimeOffset.Now;
            locationDAL.Update(locationDto);

            return location;
        }



    }
}