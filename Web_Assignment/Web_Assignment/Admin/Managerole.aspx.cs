using System;
using System.Collections.Generic;
using System.Configuration;
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
    }
}