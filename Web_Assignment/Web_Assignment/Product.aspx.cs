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
                    string sqlQuery = "SELECT ProductName, product_image, Description FROM Product WHERE ProductID = @productId";

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
                                    string productDesc = reader.GetString(2);

                                    // Set the ProductName value to the innerHTML of an HTML <h3> tag with an ID "ProductName"
                                    ProductName.InnerHtml = productName;
                                    // Set the product_image value to the "src" attribute of an HTML <img> tag with an ID "ProductImage"
                                    ProductImage.Attributes["src"] = "~/asset/" + productImage;
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

            SqlConnection con;
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(conString);

            // Check if the item already exists in the cart
            con.Open();

            string query5 = "SELECT cartID FROM Cart WHERE UserId = @UserId";
            SqlCommand command = new SqlCommand(query5, con);
            command.Parameters.AddWithValue("@UserId", userId);
            cartID = Convert.ToInt32(command.ExecuteScalar());

            command.Dispose();
            con.Close();

            int quantity = 1;

            // Add a new item to the cart
            string queryInsert = "INSERT INTO [cartProduct] (cartID, productID, quantity) VALUES (@cartId, @productId, @quantity)";
            SqlCommand cmdTest = new SqlCommand(queryInsert, con);
            cmdTest.Parameters.AddWithValue("@cartId", cartID);
            cmdTest.Parameters.AddWithValue("@productId", productId);
            cmdTest.Parameters.AddWithValue("@quantity", quantity);
            con.Open();
            cmdTest.ExecuteNonQuery();
            con.Close();

            System.Diagnostics.Debug.WriteLine("product: " + productId);
            System.Diagnostics.Debug.WriteLine("user: " + userId);
            System.Diagnostics.Debug.WriteLine("cartID: " + cartID);



        }


    }
}
