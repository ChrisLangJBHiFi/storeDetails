using StoreDetailsWeb.Repository;
using StoreDetailsWeb.Common;
using StoreDetailsWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static StoreDetailsWeb.Common.AppHelper;
 

namespace StoreDetailsWeb.BusinessLogicLayer
{

    public static class LocationBL
    {

        public static LocationModel Add(LocationModel location)
        {


            throw new NotImplementedException();
        }
        public static List<LocationModel> GetAll()
        {
            ILocationRepository locationRepository = new LocationRepository();

            var locations = locationRepository.GetAll();

            return locations;
        }

        public static LocationModel GetById(int locationId, TimeFormat timeFormat)
        {
            LocationRepository locationRepository = new LocationRepository();

            var location = locationRepository.GetById(locationId);

            location = ApplyTimeFormat(location, timeFormat);

            return location;
        }
        public static LocationModel ApplyTimeFormat(LocationModel location, TimeFormat timeFormat)
        {

            if (location != null)
            {
                if (location.NormalTradingHours != null)
                {
                    foreach (var day in location.NormalTradingHours)
                    {
                        if (timeFormat.Equals(TimeFormat.Hours12))
                        {
                            day.ClosingTime = AppHelper.GetTime12Hour(day.ClosingTime);
                            day.OpeningTime = AppHelper.GetTime12Hour(day.OpeningTime);
                        }
                        else
                        {
                            day.ClosingTime = AppHelper.GetTime24Hour(day.ClosingTime);
                            day.OpeningTime = AppHelper.GetTime24Hour(day.OpeningTime);
                        }

                    }
                }
                if (location.ScheduledTradingHourChanges != null)
                {
                    foreach (var day in location.ScheduledTradingHourChanges)
                    {
                        if (timeFormat.Equals(TimeFormat.Hours12))
                        {
                            day.ClosingTime = AppHelper.GetTime12Hour(day.ClosingTime);
                            day.OpeningTime = AppHelper.GetTime12Hour(day.OpeningTime);
                        }
                        else
                        {
                            day.ClosingTime = AppHelper.GetTime24Hour(day.ClosingTime);
                            day.OpeningTime = AppHelper.GetTime24Hour(day.OpeningTime);
                        }

                    }
                }

            }
            return location;
        }



        public static LocationModel Update(LocationModel location, string type)
        {
            ILocationRepository locationRepository = new LocationRepository();

            //get full location
            int locationId = 0;
            LocationModel sourcelocation = null;

            if (location.Id != null)
            {
                int.TryParse(location.Id.ToString(), out locationId);
                sourcelocation = GetById(locationId, TimeFormat.Hours24);

            }

            if (sourcelocation != null)
            {

                UpdateType updateType = (UpdateType)Enum.Parse(typeof(UpdateType), type);
                if (updateType == UpdateType.StoreInfo)
                {
                    sourcelocation.Name = location.Name;
                    sourcelocation.PhysicalAddress.State = location.PhysicalAddress.State;
                    sourcelocation.Email = location.Email;
                }

                if (updateType == UpdateType.NormalHours)
                {
                    foreach (var item in location.NormalTradingHours)
                    {
                        item.ClosingTime = AppHelper.GetTime24Hour(item.ClosingTime);
                        item.OpeningTime = AppHelper.GetTime24Hour(item.OpeningTime);
                    }

                    sourcelocation.NormalTradingHours = location.NormalTradingHours;
                }

                if (updateType == UpdateType.SpecialHours)
                {
                    if (sourcelocation.ScheduledTradingHourChanges == null && location.ScheduledTradingHourChanges!= null && location.ScheduledTradingHourChanges.Count > 0)
                    {
                        sourcelocation.ScheduledTradingHourChanges = new List<Jbh.Location.Model.ScheduledTradingHours>();
                    }
                    if (location.ScheduledTradingHourChanges != null)
                    {
                        foreach (var item in location.ScheduledTradingHourChanges)
                        {
                            item.ClosingTime = AppHelper.GetTime24Hour(item.ClosingTime);
                            item.OpeningTime = AppHelper.GetTime24Hour(item.OpeningTime);
                            sourcelocation.ScheduledTradingHourChanges.Add(item);
                        }
                    }
            

                }

            }


            var updatedLocation = locationRepository.Update(sourcelocation);
            return updatedLocation;
        }




    }
}