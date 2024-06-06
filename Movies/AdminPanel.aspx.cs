using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;
using System.Text.RegularExpressions;
public partial class AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie = Request.Cookies["UserData"];

        if (userCookie != null && userCookie["Admin"] == "True") // Check for admin role
        {
            // Allow access to the Admin Panel 
        }
        else
        {
            // Redirect to a login 
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            BindUserData();
        }
    }

    private void BindUserData()
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT Username, Name, FamilyName, Email, Gender, PhonePrefix, PhoneNumberWithoutPrefix, BirthYear, CityList, HobbyList, admin, Password FROM UserData"; // Add Password to the query
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            UserGridView.DataSource = command.ExecuteReader();
            UserGridView.DataBind();
            connection.Close();
        }
    }
    protected void UserGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        UserGridView.EditIndex = e.NewEditIndex;
        BindUserData();
    }

    protected void UserGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        UserGridView.EditIndex = -1;
        BindUserData();
    }

    protected void UserGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Retrieve values from GridView
            string username = UserGridView.DataKeys[e.RowIndex].Value.ToString();
            string name = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string familyName = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string email = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string gender = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string phonePrefix = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string phoneNumber = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string birthYear = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string cityList = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string hobbyList = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            string password = ((TextBox)UserGridView.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
            bool isAdmin = ((CheckBox)UserGridView.Rows[e.RowIndex].FindControl("CheckBox1")).Checked;

            string query = @"UPDATE UserData SET 
                        Name = @Name, 
                        FamilyName = @FamilyName, 
                        Email = @Email, 
                        Gender = @Gender,
                        PhonePrefix = @PhonePrefix,
                        PhoneNumberWithoutPrefix = @PhoneNumberWithoutPrefix, 
                        BirthYear = @BirthYear,
                        CityList = @CityList,
                        HobbyList = @HobbyList,
                        Password = @Password,
                        admin = @admin
                      WHERE Username = @Username";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Name", name);
            command.Parameters.AddWithValue("@FamilyName", familyName);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Gender", gender);
            command.Parameters.AddWithValue("@PhonePrefix", phonePrefix);
            command.Parameters.AddWithValue("@PhoneNumberWithoutPrefix", phoneNumber);
            command.Parameters.AddWithValue("@BirthYear", birthYear);
            command.Parameters.AddWithValue("@CityList", cityList);
            command.Parameters.AddWithValue("@HobbyList", hobbyList);
            command.Parameters.AddWithValue("@Password", password);
            command.Parameters.AddWithValue("@admin", isAdmin);
            command.Parameters.AddWithValue("@Username", username);

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            UserGridView.EditIndex = -1;
            BindUserData();
        }
    }

    protected void UserGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string username = UserGridView.DataKeys[e.RowIndex].Value.ToString();

            string query = "DELETE FROM UserData WHERE Username = @Username";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Username", username);

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            BindUserData();
        }
    }
 
    protected void AddUserButton_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "ShowModal", "showModal();", true);
    }



    protected void AddUserConfirmButton_Click(object sender, EventArgs e)
    {
        string username = newUsername.Text.Trim();
        string name = newName.Text.Trim();
        string familyName = newFamilyName.Text.Trim();
        string email = newEmail.Text.Trim();
        string gender = newGender.Text.Trim();
        string phonePrefix = newPhonePrefix.Text.Trim(); 
        string phoneNumberWithoutPrefix = newPhoneNumberWithoutPrefix.Text.Trim(); 
        string birthYear = newBirthYear.Text.Trim(); 
        string cityList = newCityList.Text.Trim(); 
        string hobbyList = newHobbyList.Text.Trim(); 
        string password = newPassword.Text.Trim(); 
        string repeatPassword = newRepeatPassword.Text.Trim(); 

        if (AreInputsValid(username, name, familyName, email, gender, phonePrefix, phoneNumberWithoutPrefix, birthYear, cityList, hobbyList, password, repeatPassword))
        {

            string path = HttpContext.Current.Server.MapPath("App_Data/Database.mdf");
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO UserData (Username, Name, FamilyName, Email, Gender, PhonePrefix, PhoneNumberWithoutPrefix, BirthYear, CityList, HobbyList, Password, admin) " +
                     "VALUES (@Username, @Name, @FamilyName, @Email, @Gender, @PhonePrefix, @PhoneNumberWithoutPrefix, @BirthYear, @CityList, @HobbyList, @Password, @admin)";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@FamilyName", familyName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Gender", gender);
                command.Parameters.AddWithValue("@PhonePrefix", phonePrefix);
                command.Parameters.AddWithValue("@PhoneNumberWithoutPrefix", phoneNumberWithoutPrefix);
                command.Parameters.AddWithValue("@BirthYear", birthYear);
                command.Parameters.AddWithValue("@CityList", cityList);
                command.Parameters.AddWithValue("@HobbyList", hobbyList);
                command.Parameters.AddWithValue("@Password", password);  
                command.Parameters.AddWithValue("@admin", newadmin.Checked);
                connection.Open();
                try
                {
                    command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627)  
                    {
                        ShowAlert("A user with this username already exists. Please use a different Username.");
                    }
                    else
                    {
                         System.Diagnostics.Debug.WriteLine("Error inserting user: " + ex.Message);
                        ShowAlert("An error occurred while adding the user. Please try again later.");
                    }

                    return;  
                }
                finally
                {
                    connection.Close();
                }

                BindUserData();
                ClearAddUserForm();
                ClientScript.RegisterStartupScript(this.GetType(), "HideModal", "hideModal();", true);
            }
        }
    }
    private bool AreInputsValid(string username, string name, string familyName, string email, string gender,
                            string phonePrefix, string phoneNumberWithoutPrefix, string birthYear,
                            string cityList, string hobbyList, string password, string repeatPassword)
    {
         if (string.IsNullOrEmpty(username) || username.Length < 2)
        {
            ShowAlert("Username should have at least 2 characters.");
            return false;
        }

         if (string.IsNullOrEmpty(name) || name.Length < 2)
        {
            ShowAlert("Name should have at least 2 characters.");
            return false;
        }

         if (string.IsNullOrEmpty(familyName) || familyName.Length < 2)
        {
            ShowAlert("Family name should have at least 2 characters.");
            return false;
        }

         if (!IsValidEmail(email))
        {
            ShowAlert("Please enter a valid email address.");
            return false;
        }

         if (string.IsNullOrEmpty(gender))
        {
            ShowAlert("Please select a gender.");
            return false;
        }

         if (string.IsNullOrEmpty(phonePrefix))
        {
            ShowAlert("Please choose a phone prefix.");
            return false;
        }

         if (!int.TryParse(phoneNumberWithoutPrefix, out _) || phoneNumberWithoutPrefix.Length < 7)
        {
            ShowAlert("Please enter a valid phone number (at least 7 digits).");
            return false;
        }

         if (!int.TryParse(birthYear, out int year) || birthYear.Length != 4 || year < 1900 || year > DateTime.Now.Year)
        {
            ShowAlert("Please enter a valid 4-digit birth year.");
            return false;
        }

         if (string.IsNullOrEmpty(cityList))
        {
            ShowAlert("Please enter a city.");
            return false;
        }

         if (string.IsNullOrEmpty(hobbyList))
        {
            ShowAlert("Please enter at least one hobby.");
            return false;
        }

         if (password.Length < 6 || password.Length > 8)
        {
            ShowAlert("Password should be between 6 and 8 characters.");
            return false;
        }

         if (password != repeatPassword)
        {
            ShowAlert("Passwords do not match.");
            return false;
        }

        return true;
    }

    private bool IsValidEmail(string email)
    {
        if (string.IsNullOrEmpty(email))
            return false;

         string pattern = @"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
        return Regex.IsMatch(email, pattern);
    }



    private void ShowAlert(string message)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", $"showAlert('{message}');", true);
    }

    private void ClearAddUserForm()
    {
        newUsername.Text = string.Empty;
        newName.Text = string.Empty;
        newFamilyName.Text = string.Empty;
        newEmail.Text = string.Empty;
        newGender.Text = string.Empty;
        newPhonePrefix.Text = string.Empty;
        newPhoneNumberWithoutPrefix.Text = string.Empty;
        newBirthYear.Text = string.Empty;
        newCityList.Text = string.Empty;
        newHobbyList.Text = string.Empty;
        newPassword.Text = string.Empty;
        newRepeatPassword.Text = string.Empty;
        newadmin.Checked = false;
    }
}