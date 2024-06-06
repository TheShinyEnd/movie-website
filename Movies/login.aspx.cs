using System;
using System.Web.Services;
using System.Data.SqlClient;
using System.Web;
public partial class login : System.Web.UI.Page
{
    [WebMethod]
    public static bool CheckCredentials(string username, string password)
    {
         string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

         string query = "SELECT TOP 1 Name, admin FROM UserData WHERE Username = @Username AND Password = @Password";

        using (SqlConnection connection = new SqlConnection(connString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();

                SqlDataReader reader = command.ExecuteReader();  
                if (reader.Read())
                {
                    // Store user data in a cookie (not session)
                    HttpCookie userCookie = new HttpCookie("UserData");
                    userCookie["Username"] = username;
                    userCookie["Admin"] = reader["admin"].ToString();  
                    HttpContext.Current.Response.Cookies.Add(userCookie);

                    Console.WriteLine("Successful login");
                    return true;
                }
                else
                {
                    Console.WriteLine("Unsuccessful login");
                    return false;
                }
            }
        }
    }
}