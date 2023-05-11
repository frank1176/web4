using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Drawing;
using System.Diagnostics.Eventing.Reader;
using System.Diagnostics;
using static System.Net.Mime.MediaTypeNames;
using System.Runtime.Remoting.Messaging;

namespace Web_Assignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["Userid"]);
            int cartID = 0;
            if (Session["Userid"] == null)
            {
                // Redirect to login page if user is not logged in

                Master.btnlogin.Visible = true;
                Master.btnlogout.Visible = false;
                Master.btnprofile.Visible = false;
                string script = "alert('Please Login'); window.location.href='Login.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

            }
            else
            {
                Master.btnlogin.Visible = false;
                Master.btnlogout.Visible = true;
                Master.btnprofile.Visible = true;

                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query5 = "SELECT CartID FROM Cart WHERE UserId = @UserId";
                    SqlCommand command = new SqlCommand(query5, connection);
                    command.Parameters.AddWithValue("@UserId", userId);
                    connection.Open();
                    cartID = Convert.ToInt32(command.ExecuteScalar());
                    connection.Close();
                }

                if (!IsPostBack)
                {


                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        string query2 = "SELECT * FROM Product INNER JOIN cartProduct ON Product.ProductID = cartProduct.ProductID WHERE cartID = @CartID";

                        SqlCommand command = new SqlCommand(query2, connection);
                        command.Parameters.AddWithValue("@CartID", cartID);
                        SqlDataReader readerCartItem = command.ExecuteReader();

                      
                         
                        
                        if (readerCartItem.HasRows)
                        {
                            
                            readerCartItem.Close();

                            SqlDataAdapter adapter = new SqlDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);
                            cartRepeater.DataSource = dataTable;
                            cartRepeater.DataBind();


                 

                            string query = @"SELECT P.ProductName, CP.quantity, (CP.quantity * P.UnitPrice) as totalPrice FROM cartProduct CP JOIN Product P ON P.productID = CP.productID WHERE CP.cartID = @cartID";


                            SqlCommand cmd2 = new SqlCommand(query, connection);
                            cmd2.Parameters.AddWithValue("@cartID", cartID);

                            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
                            DataTable dt = new DataTable();
                            adapter2.Fill(dt);

                            productRepeater.DataSource = dt;
                            productRepeater.DataBind();


                            string queryTest = "SELECT SUM(CP.quantity * P.UnitPrice) AS Subtotal " +
                                               "FROM cartProduct CP " +
                                               "INNER JOIN Product P ON CP.ProductID = P.ProductID " +
                                               "WHERE CP.cartID = @CartID";


                            SqlCommand cmd = new SqlCommand(queryTest, connection);
                            cmd.Parameters.AddWithValue("@cartID", cartID);


                            SqlDataReader reader = cmd.ExecuteReader();



                            if (reader.Read())
                            {


                                decimal subtotal = reader.GetDecimal(0);
                                // do something with the subtotal value, such as display it on the page

                                lblSubtotal.Text = subtotal.ToString("C2");

                            }

                            reader.Close();






                            connection.Close();
                        }
                        else
                        {
                            string script = "alert('Please Go add item'); window.location.href='Login.aspx';";
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                            //Show not product item text
                        }






                    }
                }
            }

        }



        protected void cartRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {



            int cartID = 0;
            int userId = Convert.ToInt32(Session["Userid"]);
            int productId = Convert.ToInt32(e.CommandArgument);
            int quantity = Convert.ToInt32((e.Item.FindControl("QuantityTextBox") as TextBox).Text);
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            if (e.CommandName == "Plus")
            {
                // increase the quantity of the product with the given ID

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string query4 = "SELECT CartID FROM Cart WHERE UserId = @UserId";
                    SqlCommand command1 = new SqlCommand(query4, con);
                    command1.Parameters.AddWithValue("@UserId", userId);
                    cartID = (int)command1.ExecuteScalar();
                    string queryCartItem = @"SELECT quantity FROM cartProduct WHERE cartID = @cartId AND productID = @productId";
                    SqlCommand commandCartItem = new SqlCommand(queryCartItem, con);
                    commandCartItem.Parameters.AddWithValue("@cartId", cartID);
                    commandCartItem.Parameters.AddWithValue("@productId", productId);
                    int existingQuantity = Convert.ToInt32(commandCartItem.ExecuteScalar());
                    string queryUpdate = @"UPDATE cartProduct SET quantity = @newQuantity WHERE cartID = @cartId AND productID = @productId";
                    SqlCommand commandUpdate = new SqlCommand(queryUpdate, con);
                    commandUpdate.Parameters.AddWithValue("@cartId", cartID);
                    commandUpdate.Parameters.AddWithValue("@productId", productId);
                    commandUpdate.Parameters.AddWithValue("@newQuantity", existingQuantity + 1);
                    commandUpdate.ExecuteNonQuery();
                    con.Close();
                }




            }
            else if (e.CommandName == "Minus")
            {
                // decrease the quantity of the product with the given ID
                // ...
                if (quantity > 1)
                {

                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();
                        string query4 = "SELECT CartID FROM Cart WHERE UserId = @UserId";
                        SqlCommand command1 = new SqlCommand(query4, con);
                        command1.Parameters.AddWithValue("@UserId", userId);
                        cartID = (int)command1.ExecuteScalar();
                        string queryCartItem = @"SELECT quantity FROM cartProduct WHERE cartID = @cartId AND productID = @productId";
                        SqlCommand commandCartItem = new SqlCommand(queryCartItem, con);
                        commandCartItem.Parameters.AddWithValue("@cartId", cartID);
                        commandCartItem.Parameters.AddWithValue("@productId", productId);
                        int existingQuantity = Convert.ToInt32(commandCartItem.ExecuteScalar());
                        string queryUpdate = @"UPDATE cartProduct SET quantity = @newQuantity WHERE cartID = @cartId AND productID = @productId";
                        SqlCommand commandUpdate = new SqlCommand(queryUpdate, con);
                        commandUpdate.Parameters.AddWithValue("@cartId", cartID);
                        commandUpdate.Parameters.AddWithValue("@productId", productId);
                        commandUpdate.Parameters.AddWithValue("@newQuantity", existingQuantity - 1);
                        commandUpdate.ExecuteNonQuery();
                        con.Close();
                    }

                }
                else
                {
                    Response.Redirect("Cart.aspx");
                }
            }
            Response.Redirect("Cart.aspx");

        }





        protected void BtnRemove_Click(object sender, EventArgs e)
        {
            int cartProductID;
            int cartID = 0;
            int userId = Convert.ToInt32(Session["Userid"]);
            Button btn = (Button)sender;
            int productId = Convert.ToInt32(btn.CommandArgument);
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                //find cart id

                string query4 = "SELECT CartID FROM Cart WHERE UserId = @UserId";
                SqlCommand command1 = new SqlCommand(query4, con);
                command1.Parameters.AddWithValue("@UserId", userId);

                cartID = (int)command1.ExecuteScalar();



                // find cartProduct id


                string query5 = "SELECT cartProductID FROM cartProduct WHERE productID = @productID";
                SqlCommand command = new SqlCommand(query5, con);
                command.Parameters.AddWithValue("@productID", productId);

                cartProductID = (int)command.ExecuteScalar();


                string query6 = "DELETE FROM cartProduct WHERE cartProductID = @cartProductID"; ;
                SqlCommand commandDelete = new SqlCommand(query6, con);
                commandDelete.Parameters.AddWithValue("@cartProductID", cartProductID);
                commandDelete.ExecuteNonQuery();


                //cartID = (int)cmd.ExecuteScalar();



                Response.Redirect("Cart.aspx");

            }



        }

        protected void btnReview_Click(object sender, EventArgs e)
        {


            Response.Redirect("CheckOut.aspx");
        }
    }
}