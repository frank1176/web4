using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace Web_Assignment.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Insert user values('" + txtUsername.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtPhoneNumber.Text + "','" + txtAddress.Text + "','" + DropDownList1.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
                          
        }
    }
}