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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Request.QueryString["UserID"]);
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query1 = "UPDATE [User] SET Password=@password WHERE UserId = @userID";
            SqlCommand command = new SqlCommand(query1, con);
            command.Parameters.AddWithValue("@password", Newpassword.Text);
            command.Parameters.AddWithValue("@userID", userId);
            int rowsAffected = command.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password is changed')", true);
                Response.Redirect("Login.aspx");
            }
            else
            {

            }
            con.Close();
        }
    }
}