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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Master.btnlogin.Visible = false;
                Master.btnlogout.Visible = true;
                Master.btnprofile.Visible = true;

                int uid = int.Parse(Session["Userid"].ToString());
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();
                string query = "SELECT * FROM [User] WHERE UserId=@userid";

                SqlCommand cmdSelectUser = new SqlCommand(query, con);

                cmdSelectUser.Parameters.AddWithValue("@userid", uid);
                SqlDataReader reader = cmdSelectUser.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    Username.Text = reader["Username"].ToString();
                    Email.Text = reader["Email"].ToString();
                    tel.Text = reader["Phonenumber"].ToString();

                }


                else
                {
                    Master.btnlogin.Visible = true;
                    Master.btnlogout.Visible = false;
                    Master.btnprofile.Visible = false;
                }
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            

            /*
            string query = "SELECT Product.*, Categories.categoriesName FROM [Product] INNER JOIN [Categories] ON Product.CategoriesID = Categories.CategoriesID WHERE ProductID=@productid";

            SqlCommand cmdSelectProduct = new SqlCommand(query, con);

            cmdSelectProduct.Parameters.AddWithValue("@productid", productID);

            SqlDataReader reader = cmdSelectProduct.ExecuteReader();
            */
        }
    }
}