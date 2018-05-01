using StoreDetailsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreDetailsWeb.Repository
{
    public interface ILocationRepository : IDisposable
    {
        List<LocationModel> GetAll();

        LocationModel GetById(int locationId);

        LocationModel Add(LocationModel location);

        LocationModel Update(LocationModel location);

    }
}