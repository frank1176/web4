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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int userId = Convert.ToInt32(Request.QueryString["UserID"]);
                // Load product details using the productID and populate the form for editing
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();
                string query = "SELECT * FROM [User] WHERE UserId=@userID";

                SqlCommand cmdSelectProduct = new SqlCommand(query, con);

                cmdSelectProduct.Parameters.AddWithValue("@userID", userId);

                SqlDataReader reader = cmdSelectProduct.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    lblSecQ.Text = reader["Question"].ToString();
                }
                con.Close();
            }
            else
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int userId = Convert.ToInt32(Request.QueryString["UserID"]);
            // Load product details using the productID and populate the form for editing
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM [User] WHERE UserId=@userID";

            SqlCommand cmdSelectProduct = new SqlCommand(query, con);

            cmdSelectProduct.Parameters.AddWithValue("@userID", userId);

            SqlDataReader reader = cmdSelectProduct.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                String answer = reader["Question"].ToString();
                if (txtSecAns.Text == answer)
                {
                    Response.Redirect("Forgot3.aspx?UserID=" + userId);
                }
            }
            con.Close();
        }


    }
}