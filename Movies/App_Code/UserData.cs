using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserData
/// </summary>
/// 
namespace Website2.App_Code
{
    public class UserData
    {
        public int UserID { get; set; }
        public string Username { get; set; }
        public string Name { get; set; }
        public string FamilyName { get; set; }
        public string Gender { get; set; }
        public string PhonePrefix { get; set; }
        public string PhoneNumberWithoutPrefix { get; set; }
        public int BirthYear { get; set; }
        public string CityList { get; set; }
        public string HobbyList { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public bool admin { get; set; }
    }
}