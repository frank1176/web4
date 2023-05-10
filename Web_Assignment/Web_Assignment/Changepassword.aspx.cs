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
    public partial class WebForm9 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if ((int)Session["role"] != 2)
            {
                Master.btnAdmin.Visible = false;

            }
            else
            {
                Master.btnAdmin.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userID = Convert.ToInt32(Session["Userid"]);
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM [User] WHERE UserId = @userId";
            SqlCommand cmdSelectUser = new SqlCommand(query, con);
            cmdSelectUser.Parameters.AddWithValue("@userId", userID);
            SqlDataReader reader = cmdSelectUser.ExecuteReader();

            if (reader.HasRows)
            {
                // User authenticated successfully, redirect to a different page
                /*FormsAuthentication.SetAuthCookie("testauth", false);*/

                reader.Read(); // Read the first row of the result set
                               // Replace "Username" with the column name for username in your database

                string password = reader["Password"].ToString();
                con.Close();
                string userinput = Password.Text;
                if (userinput == password)
                {
                    con.Open();
                    string query1 = "UPDATE [User] SET Password=@password WHERE UserId = @userId";
                    SqlCommand command = new SqlCommand(query1, con);
                    command.Parameters.AddWithValue("@password", NewPassword.Text);
                    command.Parameters.AddWithValue("@userId", userID);
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password is changed')", true);
                    }
                    else
                    {

                    }
                    con.Close();

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password is wrong')", true);
                }

            }



        }
    }
}