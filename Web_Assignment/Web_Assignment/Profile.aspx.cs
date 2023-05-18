using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Web_Assignment
{
    public partial class WebForm11 : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                int userId = Convert.ToInt32(Session["Userid"]);
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();
                string query = "SELECT * FROM [User] WHERE UserId = @userId";

                SqlCommand cmdSelectUser = new SqlCommand(query, con);

                cmdSelectUser.Parameters.AddWithValue("@userId", userId);

                SqlDataReader reader = cmdSelectUser.ExecuteReader();

                if (reader.HasRows)
                {
                    // User authenticated successfully, redirect to a different page
                    /*FormsAuthentication.SetAuthCookie("testauth", false);*/

                    reader.Read(); // Read the first row of the result set
                                   // Replace "Username" with the column name for username in your database

                    txtUsername.Text = reader["Username"].ToString();
                    txtEmail.Text = reader["Email"].ToString();
                    txtPhone.Text = reader["Phonenumber"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int auserId = Convert.ToInt32(Session["Userid"]);

            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string phnum = txtPhone.Text;


            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();


            string query = "UPDATE [User] SET Username=@UserName1, Email=@Email1, Phonenumber=@Phonenumber1 WHERE UserId = @userId";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@UserName1", username);
            command.Parameters.AddWithValue("@Email1", email);
            command.Parameters.AddWithValue("@Phonenumber1", phnum);
            command.Parameters.AddWithValue("@userId", auserId);

            int rowsAffected = command.ExecuteNonQuery();

            if (rowsAffected > 0)
            {

                Response.Redirect("Profile.aspx");
            }
            else
            {
                // Update failed, you can show an error message
            }

            con.Close();


        }
    }
}