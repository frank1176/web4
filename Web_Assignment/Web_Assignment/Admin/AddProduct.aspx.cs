using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String productname = Product_Name.Text;
            String pdesc = Product_Description.Text;
            String price= Product_price.Text;

            String dd = DropDownList1.SelectedValue.ToString();
            int ddi=int.Parse(dd);


            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./asset/" + FileUpload1.FileName.ToString());
            String image = FileUpload1.FileName.ToString();

            /*String image = FileUpload1.FileName.ToString();
            string imagePath = Request.PhysicalApplicationPath + "./asset/" + image;

            // Check if the image file already exists
            if (!File.Exists(imagePath))
            {
                FileUpload1.SaveAs(imagePath);
            }
            */
            string strInsertProduct = @"INSERT INTO [Product] (ProductName, Description, CategoriesID, UnitPrice, product_image)
                             VALUES (@productname, @pdesc, @ddi, @price, @image)";
            SqlCommand cmdInsertProduct = new SqlCommand(strInsertProduct, con);
            cmdInsertProduct.Parameters.AddWithValue("@productname", productname);
            cmdInsertProduct.Parameters.AddWithValue("@pdesc", pdesc);
            cmdInsertProduct.Parameters.AddWithValue("@price", price);
            cmdInsertProduct.Parameters.AddWithValue("@ddi", ddi);
            cmdInsertProduct.Parameters.AddWithValue("@image", image);

            cmdInsertProduct.ExecuteNonQuery();

            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
        }
    }
}