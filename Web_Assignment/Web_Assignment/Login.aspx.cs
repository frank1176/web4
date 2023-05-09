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
            string email = Gmail.Text;
            string password = Password.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT UserName, COUNT(*) as MatchingRecords FROM [User] WHERE Email=@email AND Password=@password";

            SqlCommand cmdGetUser = new SqlCommand(query, con);

            cmdGetUser.Parameters.AddWithValue("@email", email);
            cmdGetUser.Parameters.AddWithValue("@password", password);

            int count = 0;
            string userName = "";
            using (SqlDataReader reader = cmdGetUser.ExecuteReader())
            {
                if (reader.Read())
                {
                    count = Convert.ToInt32(reader["MatchingRecords"]);
                    userName = reader["UserName"].ToString();
                }
            }
            con.Close();

            if (count == 1)
            {
                // User authenticated successfully, redirect to a different page
                ////FormsAuthentication.SetAuthCookie("testauth", false);
                Session["email"] = email;
                Session["userName"] = userName;
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