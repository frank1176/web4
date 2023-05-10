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
        string username;
        string email;
        string phnum;
        int userId = 4;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

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
            username = txtUsername.Text;
            email = txtEmail.Text;
            phnum = txtPhone.Text;
            //String role = TextBox1.Text;

            int userId = 5; // Replace with the appropriate UserId value

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string strInsertUser = "UPDATE [User] SET Phonenumber = @phone, Email = @email, Username = @username WHERE UserId = @userId";
            SqlCommand command = new SqlCommand(strInsertUser, con);
            command.Parameters.AddWithValue("@username", username);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@phone", phnum);
            command.Parameters.AddWithValue("@userId", userId);
            try
            {
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Update successful
                }
                else
                {
                    // Update failed - handle error
                }
            }
            catch (Exception ex)
            {
                // Handle exception
            }
            finally
            {
                con.Close();
            }
        }
    }
}