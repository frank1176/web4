using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Web_Assignment
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            // Check if the ProductID query string parameter is present

            if (!string.IsNullOrEmpty(Request.QueryString["ProductID"]))
            {
                // Get the ProductID value from the query string parameter
                int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
                string description = string.Empty;
                // Define the connection string and SQL query
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string sqlQuery = "SELECT ProductName, product_image, Description, UnitPrice FROM Product WHERE ProductID = @productId";

                // Create a new SqlConnection object and open the connection
                using (SqlConnection connection = new SqlConnection(conString))
                {
                    connection.Open();

                    // Create a new SqlCommand object with the SQL query and SqlConnection object
                    using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                    {
                        // Add a parameter to the SqlCommand object for the ProductID value
                        command.Parameters.AddWithValue("@productId", productId);

                        // Execute the SQL query and get the results using a SqlDataReader
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            // Check if there are any rows returned
                            if (reader.Read())
                            {
                                // Get the ProductName and product_image values from the SqlDataReader
                                string productName = reader.GetString(0);
                                string productImage = reader.GetString(1);
                                string productDesc = reader.GetString(2).Replace(Environment.NewLine, "<br>");
                                decimal productPrice = reader.GetDecimal(3);

                                // Set the ProductName value to the innerHTML of an HTML <h3> tag with an ID "ProductName"
                                ProductName.InnerHtml = productName;
                                // Set the product_image value to the "src" attribute of an HTML <img> tag with an ID "ProductImage"
                                ProductImage.Attributes["src"] = "~/asset/" + productImage;
                                
                                addbtn.Text= "RM " + productPrice.ToString();

                                string[] descLines = productDesc.Split(new char[] { '@', '#', '$' }, StringSplitOptions.RemoveEmptyEntries);
                                productDesc = string.Join("<br>", descLines);

                                ProductDesc.InnerHtml = productDesc;
                            }
                        }
                    }
                }
            }

            if (Session["Username"] != null)
            {
                Master.btnlogin.Visible = false;
                Master.btnlogout.Visible = true;
                Master.btnprofile.Visible = true;
            }
            else
            {
                Master.btnlogin.Visible = true;
                Master.btnlogout.Visible = false;
                Master.btnprofile.Visible = false;
            }
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["ProductID"])) {
                int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
                int userId = Convert.ToInt32(Session["Userid"]);
                SqlConnection con;
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(conString);
                // Check if the item already exists in the cart
                string query = "SELECT cartProductID, quantity FROM CartProduct WHERE cartID = @cartId AND productID = @productId";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@cartId", userId);
                cmd.Parameters.AddWithValue("@productId", productId);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    int cartProductId = Convert.ToInt32(reader["CartProductID"]);
                    int quantity = Convert.ToInt32(reader["quantity"]) + 1;
                    reader.Close();

                    // Update the quantity
                    query = "UPDATE CartProduct SET quantity = @quantity WHERE cartProductID = @cartProductId";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@quantity", quantity);
                    cmd.Parameters.AddWithValue("@cartProductId", cartProductId);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    reader.Close();

                    // Add a new item to the cart
                    query = "INSERT INTO cartProduct (cartID, productID, quantity) VALUES (@cartId, @productId, 1)";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@cartId", userId);
                    cmd.Parameters.AddWithValue("@productId", productId);
                    cmd.ExecuteNonQuery();
                }

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
