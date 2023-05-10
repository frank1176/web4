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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int productID = Convert.ToInt32(btnEdit.CommandArgument);
            Response.Redirect("UpdateProduct.aspx?ProductID=" + productID);
           
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int productID = Convert.ToInt32(btnEdit.CommandArgument);

            System.Diagnostics.Debug.WriteLine("productID delete: " + productID);

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "DELETE FROM [Product] WHERE ProductID=@productID";
            SqlCommand cmdDeleteProduct = new SqlCommand(query, con);

            cmdDeleteProduct.Parameters.AddWithValue("@productID", productID);

            int rowsAffected = cmdDeleteProduct.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                // Delete successful, you can show a success message or redirect to another page
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Delete is successfull')", true);
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                // Delete failed, you can show an error message
            }

            con.Close();

        }
    }
}