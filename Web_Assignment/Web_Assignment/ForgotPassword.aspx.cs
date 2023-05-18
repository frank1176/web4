using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM [dbo].[User] WHERE Email = @aemail";
            SqlCommand cmdSelectUser = new SqlCommand(query, con);
            cmdSelectUser.Parameters.AddWithValue("@aemail", email);
            SqlDataReader reader = cmdSelectUser.ExecuteReader();

            if (reader.HasRows)
            {
                // User authenticated successfully, redirect to a different page
                /*FormsAuthentication.SetAuthCookie("testauth", false);*/

                reader.Read(); // Read the first row of the result set
                               // Replace "Username" with the column name for username in your database

                string userId = reader["UserId"].ToString();
                Response.Redirect("Forgot2.aspx?UserID=" + userId);


            }

        }
    }
}