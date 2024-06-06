using System.Web.Services;
using System.Web;
using System.Collections.Generic;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{

 

    [WebMethod]
    public static Dictionary<string, string> CheckCredentials(string username, string name, string family_name, string gender, string phone_prefix, string phone_num_noprefix, string birthdate, string city_list, string hobby_list, string password, string email)
    {
         var userData = new Dictionary<string, string>();
        userData.Add("username", username);
        userData.Add("name", name);
        userData.Add("family_name", family_name);
        userData.Add("gender", gender);
        userData.Add("phone_prefix", phone_prefix);
        userData.Add("phone_num_noprefix", phone_num_noprefix);
        userData.Add("birthdate", birthdate);
        userData.Add("city_list", city_list);
        userData.Add("hobby_list", hobby_list);
        userData.Add("password", password);
        userData.Add("email", email);

         string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
         
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

        
        string query = "INSERT INTO UserData (Username, Name, FamilyName, Gender, PhonePrefix, PhoneNumberWithoutPrefix, BirthYear, CityList, HobbyList, Password, Email) " +
                       "VALUES (@Username, @Name, @FamilyName, @Gender, @PhonePrefix, @PhoneNumberWithoutPrefix, @BirthYear, @CityList, @HobbyList, @Password, @Email)";

        using (SqlConnection connection = new SqlConnection(connString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@FamilyName", family_name);
                command.Parameters.AddWithValue("@Gender", gender);
                command.Parameters.AddWithValue("@PhonePrefix", phone_prefix);
                command.Parameters.AddWithValue("@PhoneNumberWithoutPrefix", phone_num_noprefix);
                command.Parameters.AddWithValue("@BirthYear", birthdate);
                command.Parameters.AddWithValue("@CityList", city_list);
                command.Parameters.AddWithValue("@HobbyList", hobby_list);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Email", email);

                connection.Open();
                try
                {
                    int rowsAffected = command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627)
                    {
                         HttpContext.Current.Response.Write("<script>showAlert('A user with this username already exists. Please use a different Username.');</script>");
                    }
                    else
                    {
                         System.Diagnostics.Debug.WriteLine("Error inserting user: " + ex.Message);

                         HttpContext.Current.Response.Write("<script>showAlert('An error occurred while adding the user. Please try again later.');</script>");
                    }

                    return null;  
                }
                finally
                {
                    connection.Close();
                }

                connection.Close();

              
                
            }
        }
    

        return userData;  
    }



}