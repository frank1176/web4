using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Web_Assignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //String email = Gmail.Text;
            //String password = Password.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT COUNT(*) FROM [User] WHERE Email=@email AND Password=@Password";

            SqlCommand cmdInsertUser = new SqlCommand(query, con);

           // cmdInsertUser.Parameters.AddWithValue("@email", email);
            //cmdInsertUser.Parameters.AddWithValue("@password", password);
            int count = Convert.ToInt32(cmdInsertUser.ExecuteScalar());
            cmdInsertUser.ExecuteNonQuery();

            if (count == 1)
            {
                // User authenticated successfully, redirect to a different page
                FormsAuthentication.SetAuthCookie("testauth", false);
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