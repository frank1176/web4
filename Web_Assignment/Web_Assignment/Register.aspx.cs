using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                
                Master.btnlogin.Visible = false;
                Master.btnlogout.Visible = true;
                Master.btnprofile.Visible = true;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Master.btnlogin.Visible = true;
                Master.btnlogout.Visible = false;
                Master.btnprofile.Visible = false;
               
            }

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //String role = TextBox1.Text;
            String username = txtUserName.Text;
            String email = Email.Text;
            String phnum = Phone.Text;
            String pass = Password.Text;

            int role = 1;
            String q = DropDownList1.Text;
            String a = Answer.Text;

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string strInsertUser = @"INSERT INTO [User] (Username, Email, Password, Phonenumber, Roleid, Question, Answer)
                             VALUES (@username, @email, @password, @phoneNumber, @roleId, @question, @answer);
                               SELECT SCOPE_IDENTITY()";
            SqlCommand cmdInsertUser = new SqlCommand(strInsertUser, con);
            cmdInsertUser.Parameters.AddWithValue("@username", username);
            cmdInsertUser.Parameters.AddWithValue("@email", email);
            cmdInsertUser.Parameters.AddWithValue("@password", pass);
            cmdInsertUser.Parameters.AddWithValue("@phoneNumber", phnum);
            cmdInsertUser.Parameters.AddWithValue("@roleId", role);
            cmdInsertUser.Parameters.AddWithValue("@question", q);
            cmdInsertUser.Parameters.AddWithValue("@answer", a);
           

            int userId = Convert.ToInt32(cmdInsertUser.ExecuteScalar());
            int count = 0;
            string strinsertcart = @"INSERT INTO [Cart] (count,UserId) VALUES(@count, @userId)"; // Correct the parameter name
            SqlCommand cmdinsertcart = new SqlCommand(strinsertcart, con);
            cmdinsertcart.Parameters.AddWithValue("@count", count);
            cmdinsertcart.Parameters.AddWithValue("@userId", userId);
            cmdinsertcart.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/Login.aspx");
        }
    }
}