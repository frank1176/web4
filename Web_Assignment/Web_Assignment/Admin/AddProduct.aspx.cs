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

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int catid = Convert.ToInt32(btnEdit.CommandArgument);
            Categoriesid.Visible = true;
            catidtext.Visible = true;
            CategoriesName.Visible = true;
            catname.Visible = true;
            CategoriesDescription.Visible= true;
            catdesc .Visible = true;
            btnupcat.Visible = true;
            catidtext.Text= catid.ToString();
           

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM Categories WHERE CategoriesID=@catid";
            SqlCommand cmdUpdatecat = new SqlCommand(query, con);
            cmdUpdatecat.Parameters.AddWithValue("@catid", catid);
            SqlDataReader reader = cmdUpdatecat.ExecuteReader();

            
            if (reader.Read()) // Ensure that there is a row to read
            {
                catname.Text = reader["categoriesName"].ToString();
                catdesc.Text = reader["Description"].ToString();
            }
            else
            {
                catname.Text = ""; // Clear the TextBox if no row is found
            }
            reader.Close();








        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int catid = Convert.ToInt32(btnEdit.CommandArgument);

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string query = "DELETE FROM [Categories] WHERE CategoriesID=@catid";
            SqlCommand cmdUpdatecat = new SqlCommand(query, con);
            cmdUpdatecat.Parameters.AddWithValue("@catid", catid);
            int rowsAffected = cmdUpdatecat.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Update successful, you can show a success message or redirect to another page
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                // Update failed, you can show an error message
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String catName = catname.Text;
            String desc = catdesc.Text;

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            int catid = int.Parse(catidtext.Text);
            
            string query = "UPDATE [Categories] SET categoriesName=@catName,Description=@desc WHERE CategoriesID=@catid";
            SqlCommand cmdUpdatecat = new SqlCommand(query, con);
            cmdUpdatecat.Parameters.AddWithValue("@catid", catid);
            cmdUpdatecat.Parameters.AddWithValue("@catName", catName);
            cmdUpdatecat.Parameters.AddWithValue("@desc", desc);

            

            
            int rowsAffected = cmdUpdatecat.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Update successful, you can show a success message or redirect to another page
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                // Update failed, you can show an error message
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String catName = addcat.Text;
            String desc = addcatdesc.Text;
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string strInsertcat = @"INSERT INTO [Categories] (categoriesName,Description)
                             VALUES (@catname,@catdesc)";
            SqlCommand cmdInsertcat = new SqlCommand(strInsertcat, con);
            cmdInsertcat.Parameters.AddWithValue("@catname", catName);
            cmdInsertcat.Parameters.AddWithValue("@catdesc", desc);

           

            int rowsAffected = cmdInsertcat.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Update successful, you can show a success message or redirect to another page
                Response.Redirect("AddProduct.aspx");
            }
            else
            {
                // Update failed, you can show an error message
            }



        }
    }
}