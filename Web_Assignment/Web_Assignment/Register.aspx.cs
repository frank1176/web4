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
          
        }

        protected void login_Click(object sender, EventArgs e)
        {
            //String role = TextBox1.Text;
            String username = txtUserName.Text;
            String email = Email.Text;
            String phnum = Phone.Text;
            String pass = Password.Text;

            int role = 1;
            String q = Question.Text;
            String a = Answer.Text;

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            //// Parameterized SQL statement
            //string strInsert = "INSERT INTO [User] VALUES (@username,@email,@pass,@phnum,@role,@q,@a)";

            //// Execute SQL query
            //SqlCommand cmdInsert = new SqlCommand(strInsert, con);

            ////cmdInsert.Parameters.AddWithValue("@role", role);
            //cmdInsert.Parameters.AddWithValue("@username", username);
            //cmdInsert.Parameters.AddWithValue("@email", email);
            //cmdInsert.Parameters.AddWithValue("@phnum", phnum);
            //cmdInsert.Parameters.AddWithValue("@pass", pass);
            //cmdInsert.Parameters.AddWithValue("@role", role);
            //cmdInsert.Parameters.AddWithValue("@q", q);
            //cmdInsert.Parameters.AddWithValue("@a", a);

            //cmdInsert.ExecuteNonQuery();

            //con.Close();
            string strInsertUser = @"INSERT INTO [User] (Username, Email, Password, Phonenumber, Roleid, Question, Answer)
                             VALUES (@username, @email, @password, @phoneNumber, @roleId, @question, @answer)";
            SqlCommand cmdInsertUser = new SqlCommand(strInsertUser, con);
            cmdInsertUser.Parameters.AddWithValue("@username", username);
            cmdInsertUser.Parameters.AddWithValue("@email", email);
            cmdInsertUser.Parameters.AddWithValue("@password", pass);
            cmdInsertUser.Parameters.AddWithValue("@phoneNumber", phnum);
            cmdInsertUser.Parameters.AddWithValue("@roleId", role);
            cmdInsertUser.Parameters.AddWithValue("@question", q);
            cmdInsertUser.Parameters.AddWithValue("@answer", a);
            cmdInsertUser.ExecuteNonQuery();

            con.Close();
        }
    }
}