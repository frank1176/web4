using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            String email = Gmail.Text;
            String password = Password.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM [User] WHERE Email=@email AND Password=@Password";

            SqlCommand cmdSelectUser = new SqlCommand(query, con);

            cmdSelectUser.Parameters.AddWithValue("@email", email);
            cmdSelectUser.Parameters.AddWithValue("@password", password);

            SqlDataReader reader = cmdSelectUser.ExecuteReader();

            if (reader.HasRows)
            {
                // User authenticated successfully, redirect to a different page
                /*FormsAuthentication.SetAuthCookie("testauth", false);*/

                reader.Read(); // Read the first row of the result set
                string username = reader["Username"].ToString(); // Replace "Username" with the column name for username in your database

                // Store the username somewhere (e.g., in a session variable) to use later
                Session["Username"] = username;
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Invalid credentials
                Response.Redirect("Register.aspx");
            }
        }
    }
}