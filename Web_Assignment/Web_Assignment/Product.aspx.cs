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
using static System.Net.Mime.MediaTypeNames;

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

                                Addbtn.Text = "RM " + productPrice.ToString();

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

        protected void Addbtn_Click(object sender, EventArgs e)
        {

            int productId = Convert.ToInt32(Request.QueryString["ProductID"]);
            int userId = Convert.ToInt32(Session["Userid"]);
            int cartID;
            System.Diagnostics.Debug.WriteLine("product: " + productId);
            System.Diagnostics.Debug.WriteLine("user: " + userId);
            SqlConnection con;
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(conString);
            con.Open();
            string strselectcart = @"SELECT * FROM [Cart] WHERE UserId=@userId";
            SqlCommand cmdselectcart = new SqlCommand(strselectcart, con);
            cmdselectcart.Parameters.AddWithValue("@userId", userId);



            SqlDataReader reader = cmdselectcart.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                cartID = int.Parse(reader["cartID"].ToString());
                int count= int.Parse(reader["count"].ToString());
                int quantity = 1;
                reader.Close();

                string queryCartItem = @"SELECT quantity FROM cartProduct WHERE cartID = @cartId AND productID = @productId";
                SqlCommand commandCartItem = new SqlCommand(queryCartItem, con);
                commandCartItem.Parameters.AddWithValue("@cartId", cartID);
                commandCartItem.Parameters.AddWithValue("@productId", productId);
                int existingQuantity = Convert.ToInt32(commandCartItem.ExecuteScalar());

                if (existingQuantity > 0)
                {
                    // Update the existing cart item with a new quantity
                    string queryUpdate = @"UPDATE cartProduct SET quantity = @newQuantity WHERE cartID = @cartId AND productID = @productId";
                    SqlCommand commandUpdate = new SqlCommand(queryUpdate, con);
                    commandUpdate.Parameters.AddWithValue("@cartId", cartID);
                    commandUpdate.Parameters.AddWithValue("@productId", productId);
                    commandUpdate.Parameters.AddWithValue("@newQuantity", existingQuantity + 1);
                    commandUpdate.ExecuteNonQuery();
                }
                else
                {
                    // Add a new item to the cart
                    string insertcartProduct = @"INSERT INTO [cartProduct] (cartID, productID, quantity)VALUES(@cartID,@productId,@quantity)";
                    SqlCommand cmdinsertcartProduct = new SqlCommand(insertcartProduct, con);
                    cmdinsertcartProduct.Parameters.AddWithValue("@cartID", cartID);
                    cmdinsertcartProduct.Parameters.AddWithValue("@count", count);
                    cmdinsertcartProduct.Parameters.AddWithValue("@productId", productId);
                    cmdinsertcartProduct.Parameters.AddWithValue("@quantity", quantity);
                    cmdinsertcartProduct.ExecuteNonQuery();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert Product is successfull')", true);
                }
    

                con.Close();
            }
            else
            {
                string script = "alert('Please Login'); window.location.href='Login.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
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
