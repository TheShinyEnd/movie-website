using System;
using System.Web;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {    }




    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        HttpCookie userCookie = new HttpCookie("UserData");
        userCookie.Expires = DateTime.Now.AddDays(30); // Expire the cookie
        Response.Cookies.Add(userCookie);

        Response.Redirect("Login.aspx"); // Redirect to the login page
    }

    protected void AdminPanelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPanel.aspx");
    }
}