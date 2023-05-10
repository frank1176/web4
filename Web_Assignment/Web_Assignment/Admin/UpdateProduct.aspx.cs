using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!IsPostBack)
            {
                if (Request.QueryString["ProductID"] != null)
                {
                    int productID = Convert.ToInt32(Request.QueryString["ProductID"]);
                    // Load product details using the productID and populate the form for editing
                    SqlConnection con;
                    string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    con = new SqlConnection(strCon);
                    con.Open();
                    string query = "SELECT Product.*, Categories.categoriesName FROM [Product] INNER JOIN [Categories] ON Product.CategoriesID = Categories.CategoriesID WHERE ProductID=@productid";

                    SqlCommand cmdSelectProduct = new SqlCommand(query, con);

                    cmdSelectProduct.Parameters.AddWithValue("@productid", productID);

                    SqlDataReader reader = cmdSelectProduct.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        String productname = reader["ProductName"].ToString();
                        String desc = reader["Description"].ToString();
                        int cat = int.Parse(reader["CategoriesID"].ToString());
                        double price = double.Parse(reader["UnitPrice"].ToString());
                        String img = reader["product_image"].ToString();

                        ProductName.Text = productname;
                        ProductDesc.Text = desc;
                        ProductPrice.Text = price.ToString();
                        DropDownList1.SelectedValue = cat.ToString();
                        ProductImage.ImageUrl = "~/asset/" + img;
                    }
                    else
                    {
                        
                        
                    }
                }
                else
                {
                    Response.Redirect("ProductList.aspx");
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int productID = Convert.ToInt32(Request.QueryString["ProductID"]);
            String productname = ProductName.Text;
            String pdesc = ProductDesc.Text;
            decimal price = Convert.ToDecimal(ProductPrice.Text);
            String image = "";
            String dd = DropDownList1.SelectedValue.ToString();
            int ddi = int.Parse(dd);
            

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            if (FileUpload1.HasFile) // Use HasFile property instead of checking for null
            {
                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./asset/" + FileUpload1.FileName.ToString());
                image = FileUpload1.FileName.ToString();
                Response.Write("Image value: " + image);
                System.Diagnostics.Debug.WriteLine("Image value has: " + image);
            }
            else
            {
                string imageUrl = ProductImage.ImageUrl;
                image = Path.GetFileName(imageUrl); // Get the file name only from the ImageUrl property
                Response.Write("Image value: " + image);
                System.Diagnostics.Debug.WriteLine("Image value original: " + image);
            }


            string query = "UPDATE [Product] SET ProductName=@productName, Description=@productDesc, CategoriesID=@categoriesID, UnitPrice=@productPrice, product_image=@image WHERE ProductID=@productID";
            SqlCommand cmdUpdateProduct = new SqlCommand(query, con);
            System.Diagnostics.Debug.WriteLine("ProductName: " + productname);
            System.Diagnostics.Debug.WriteLine("ProductDesc: " + pdesc);
            System.Diagnostics.Debug.WriteLine("ProductPrice: " + price);
            cmdUpdateProduct.Parameters.AddWithValue("@productName", productname);
            cmdUpdateProduct.Parameters.AddWithValue("@productDesc", pdesc);
            cmdUpdateProduct.Parameters.AddWithValue("@categoriesID", ddi);
            cmdUpdateProduct.Parameters.AddWithValue("@productPrice", price);
            cmdUpdateProduct.Parameters.AddWithValue("@image", image);
            cmdUpdateProduct.Parameters.AddWithValue("@productid", productID);

            int rowsAffected = cmdUpdateProduct.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Update successful, you can show a success message or redirect to another page
                Response.Redirect("UpdateProduct.aspx?ProductID=" + productID);
            }
            else
            {
                // Update failed, you can show an error message
            }
        }
    }
}