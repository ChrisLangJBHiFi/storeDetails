using Jbh.Location.Model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using ServiceStack;
using StoreDetailsWeb.Models;
using StoreDetailsWeb.Models.AppData;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using static StoreDetailsWeb.BusinessLogicLayer.LocationBL;

namespace StoreDetailsWeb.Common
{


    public static class AppHelper
    {

        

            public static Userprofile GetUserProfile(string email)
        {

            AppUser appUser = null;
            Userprofile userprofile = null;
            var userProfileApiTokenUrl = ConfigurationManager.AppSettings["UserProfileApiTokenUrl"];
            var userProfileApiProfileUrl = ConfigurationManager.AppSettings["UserProfileApiProfileUrl"];
            var userProfileApiUserName = ConfigurationManager.AppSettings["UserProfileApiUserName"];
            var userProfileApiPassword = ConfigurationManager.AppSettings["UserProfileApiPassword"];

            var token = GetUserProfileAccessToken(userProfileApiTokenUrl, userProfileApiUserName, userProfileApiPassword);

            var profileUrl = userProfileApiProfileUrl + email + '/';

            if (token != null)
            {

                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token.access_token);
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    appUser = JsonConvert.DeserializeObject<AppUser>(client.GetStringAsync(profileUrl).Result);

                    if (appUser != null)
                    {
                        userprofile = appUser.UserProfile;
                    }
                }
            }

            return userprofile;
        }



        private static AccessToken GetUserProfileAccessToken(string serviceUrl, string username, string password)
        {
            using (var client = new HttpClient())
            {
                //Define Headers
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Prepare Request Body
                List<KeyValuePair<string, string>> requestData = new List<KeyValuePair<string, string>>();
                requestData.Add(new KeyValuePair<string, string>("grant_type", "password"));
                requestData.Add(new KeyValuePair<string, string>("username", username));
                requestData.Add(new KeyValuePair<string, string>("password", password));

                FormUrlEncodedContent requestBody = new FormUrlEncodedContent(requestData);

                //Request Token
                var request = client.PostAsync(serviceUrl, requestBody).Result;
                var response = request.Content.ReadAsStringAsync().Result;

                return JsonConvert.DeserializeObject<AccessToken>(response);
            }
        }

        public enum UpdateType
        {
            NormalHours,
            StoreInfo,
            Categories,
            SpecialHours
        };

        public enum TimeFormat
        {
            Hours24,
            Hours12
        };

        public static string GetTime12Hour(string time)
        {
            string returnTime = string.Empty;
            if (!string.IsNullOrEmpty(time))
            {
                var timeSplit = time.Split(new char[] { ':' });
                if (timeSplit.Length == 2)
                {
                    var hour = timeSplit[0].PadLeft(2, '0');
                    var min = timeSplit[1].PadLeft(2, '0');
                    returnTime = DateTime.ParseExact(hour + ":" + min, "HH:mm", null).ToString("hh:mm tt");
                }

            }

            return returnTime;
        }

        public static string GetTime24Hour(string time)
        {
            string returnTime = string.Empty;
            if (!string.IsNullOrEmpty(time))
            {
                DateTime timeValue = Convert.ToDateTime(time);
                returnTime = timeValue.ToString("HH:mm");
            }

            return returnTime;
        }

        private static dynamic GetValue(dynamic newValue, dynamic oldValue)
        {
            return newValue ?? oldValue;
        }

        public static LocationModel LocationMapFormJson(dynamic json, string type)
        {
            UpdateType updateType = (UpdateType)Enum.Parse(typeof(UpdateType), type);

            var location = new LocationModel() { PhysicalAddress = new Jbh.Common.Model.Address(), NormalTradingHours = new List<Jbh.Location.Model.TradingHours>() };
            location.Id = GetValue(json["Id"], location.Id);
            location.Name = GetValue(json["Name"], location.Name);
            location.Email = GetValue(json["Email"], location.Email);
            location.PhysicalAddress.State = GetValue(json["PhysicalAddress.State"], location.PhysicalAddress.State);


            if (updateType == UpdateType.NormalHours)
            {
                //Map Normal Trading Hours
                for (int i = 0; i <= 6; i++)
                {
                    var th = new Jbh.Location.Model.TradingHours();
                    th.DayOfWeek = GetValue(json["NormalTradingHours[" + i + "].DayOfWeek"], th.DayOfWeek);
                    th.IsOpen = GetValue(json["NormalTradingHours[" + i + "].IsOpen"], th.IsOpen);
                    th.OpeningTime = GetValue(json["NormalTradingHours[" + i + "].OpeningTime"], th.OpeningTime);
                    th.ClosingTime = GetValue(json["NormalTradingHours[" + i + "].ClosingTime"], th.ClosingTime);
                    location.NormalTradingHours.Add(th);
                }
            }
            if (updateType == UpdateType.SpecialHours)
            {
                string date = json["date"];
                var reason = json["reason"];
                var otherReason = json["otherReason"];
                var timePeriod = json["timePeriod"];
                var openingTimes = json["OpeningTimes"];
                var closingTimes = json["ClosingTimes"];

                if (!string.IsNullOrEmpty(date))
                {
                    location.ScheduledTradingHourChanges = new List<ScheduledTradingHours>();

                    var scheduledTradingHours = new ScheduledTradingHours();

                    scheduledTradingHours.Date = DateTimeOffset.Parse(date);
                    scheduledTradingHours.Reason = (string.IsNullOrEmpty(otherReason)) ? reason : otherReason;
                    scheduledTradingHours.OpeningTime = openingTimes;
                    scheduledTradingHours.ClosingTime = closingTimes;
                    scheduledTradingHours.DayOfWeek = scheduledTradingHours.Date.DayOfWeek;
                    scheduledTradingHours.IsOpen = (timePeriod == "SpecialTimes") ? true : false;

                    location.ScheduledTradingHourChanges.Add(scheduledTradingHours);
                }






            }



            return location;
        }
    }
}