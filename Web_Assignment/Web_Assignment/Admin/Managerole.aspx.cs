using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.Admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String role = TextBox1.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            // Parameterized SQL statement
            string strInsert = "INSERT INTO [Role] VALUES (@role)";

            // Execute SQL query
            SqlCommand cmdInsert = new SqlCommand(strInsert, con);
            cmdInsert.Parameters.AddWithValue("@role", role);
            cmdInsert.ExecuteNonQuery();

            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string dd = DropDownList1.SelectedValue.ToString();
            int dduser = int.Parse(dd);

            string roleid = DropDownList2.SelectedValue.ToString();
            int ddroleid = int.Parse(roleid);

            // Parameterized SQL statement
            string strUpdate = "UPDATE [User] SET Roleid = @role WHERE UserId = @userid";

            // Execute SQL query
            SqlCommand cmdUpdate = new SqlCommand(strUpdate, con);
            cmdUpdate.Parameters.AddWithValue("@role", ddroleid);
            cmdUpdate.Parameters.AddWithValue("@userid", dduser);
            cmdUpdate.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Managerole.aspx");
        }
    }
}