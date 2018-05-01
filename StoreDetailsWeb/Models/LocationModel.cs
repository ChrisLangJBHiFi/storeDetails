using Jbh.Common.Model;
using Jbh.Location.Model;
using StoreDetailsWeb.Common;
using StoreDetailsWeb.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace StoreDetailsWeb.Models
{
    public class LocationModel
    {
        [Required]
        public string Name { get; set; }
        public int? ShopId { get; set; }
        public bool IsRegionalHub { get; set; }
        public bool IsMetroHub { get; set; }
        public List<ScheduledTradingHours> ScheduledTradingHoursForTheComingWeek { get; }
        public List<ScheduledTradingHours> ScheduledTradingHourChanges { get; set; }
        public List<TradingHours> NormalTradingHours { get; set; }
        public string Fax { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public Address PhysicalAddress { get; set; }
        public decimal? Longitude { get; set; }
        public decimal? Latitude { get; set; }
        public int? Id { get; set; }
        public RegionType RegionType { get; set; }
        public bool IsActive { get; set; }

        #region TODO
        public string URL { get; set; }
        public string CentreLevel { get; set; }
        public string ShopUnitLot { get; set; }
        public string AdminEmail { get; set; }
        //??
        public string Store { get; set; }



        public string JBStoreNumber { get; set; }
        public string JBStoreName { get; set; }
        public bool IsJBHome { get; set; }
        public bool IsDCWarehouse { get; set; }
        #endregion

        public IEnumerable<string> CategoriesList { get; set; }

        
        public IEnumerable<string> AvailableTraduingHours
        {
            get
            {

                #region timeintervalList
                var timeIntervals = @"00:00,
                                00:30,
                                01:00,
                                01:30,
                                02:00,
                                02:30,
                                03:00,
                                03:30,
                                04:00,
                                04:30,
                                05:00,
                                05:30,
                                06:00,
                                06:30,
                                07:00,
                                07:30,
                                08:00,
                                08:30,
                                09:00,
                                09:30,
                                10:00,
                                10:30,
                                11:00,
                                11:30,
                                12:00,
                                12:30,
                                13:00,
                                13:30,
                                14:00,
                                14:30,
                                15:00,
                                15:30,
                                16:00,
                                16:30,
                                17:00,
                                17:30,
                                18:00,
                                18:30,
                                19:00,
                                19:30,
                                20:00,
                                20:30,
                                21:00,
                                21:30,
                                22:00,
                                22:30,
                                23:00,
                                23:30";
                #endregion
                var timeArray = timeIntervals.Replace("\r\n", "").Replace(" ", "").Split(new char[] { ',' });
                List<string> timeRange = new List<string>();

                foreach (string i in timeArray)
                {
                    timeRange.Add(AppHelper.GetTime12Hour(i));
                }

                return timeRange;//Enumerable.Range(00, 24).Select(i => (DateTime.MinValue.AddMinutes(i)).ToString("hh.mm tt"));

            }
        }
    }
}