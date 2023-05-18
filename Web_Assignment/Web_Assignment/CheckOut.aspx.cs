using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
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

                if (!IsPostBack)
                {

                    int userId = Convert.ToInt32(Session["Userid"]);

                    con = new SqlConnection(strCon);
                    con.Open();
                    string query2 = "SELECT * FROM [Delivery_address] INNER JOIN [User] ON [Delivery_address].UserId = [User].UserId WHERE [User].UserId = @auserId";


                    SqlCommand command = new SqlCommand(query2, con);

                    command.Parameters.AddWithValue("@auserId", userId);

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    addressRepeater.DataSource = dataTable;
                    addressRepeater.DataBind();
                }

                if (reader.HasRows)
                {
                    reader.Read();
                    Username.Text = reader["Username"].ToString();
                    Email.Text = reader["Email"].ToString();
                    tel.Text = reader["Phonenumber"].ToString();

                }


                if (!IsPostBack)
                {


                    int userId = Convert.ToInt32(Session["Userid"]);
                    int cartID = 0;
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

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();


                        string query4 = @"SELECT P.ProductName, CP.quantity, (CP.quantity * P.UnitPrice) as totalPrice FROM cartProduct CP JOIN Product P ON P.productID = CP.productID WHERE CP.cartID = @cartID";


                        SqlCommand cmd2 = new SqlCommand(query4, connection);
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


                        SqlDataReader reader2 = cmd.ExecuteReader();



                        if (reader2.Read())
                        {


                            decimal subtotal = reader2.GetDecimal(0);
                            // do something with the subtotal value, such as display it on the page

                            lblSubtotal.Text = subtotal.ToString("C2");

                        }

                        reader2.Close();






                        connection.Close();
                    }








                }

            }
            else
            {
                Master.btnlogin.Visible = true;
                Master.btnlogout.Visible = false;
                Master.btnprofile.Visible = false;
            }
        }

        protected void addressRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "SelectAddress")
            {

            }
        }



        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["Userid"]);
            int cartID = 0;
            decimal subtotal = 0;
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

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query4 = @"SELECT P.ProductName, CP.quantity, (CP.quantity * P.UnitPrice) as totalPrice FROM cartProduct CP JOIN Product P ON P.productID = CP.productID WHERE CP.cartID = @cartID";


                SqlCommand cmd2 = new SqlCommand(query4, connection);
                cmd2.Parameters.AddWithValue("@cartID", cartID);

                SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                adapter2.Fill(dt);

                productRepeater2.DataSource = dt;
                productRepeater2.DataBind();

                string queryTest = "SELECT SUM(CP.quantity * P.UnitPrice) AS Subtotal " +
                                   "FROM cartProduct CP " +
                                   "INNER JOIN Product P ON CP.ProductID = P.ProductID " +
                                   "WHERE CP.cartID = @CartID";


                SqlCommand cmd = new SqlCommand(queryTest, connection);
                cmd.Parameters.AddWithValue("@cartID", cartID);


                SqlDataReader reader2 = cmd.ExecuteReader();



                if (reader2.Read())
                {


                    subtotal = reader2.GetDecimal(0);
                    // do something with the subtotal value, such as display it on the page

                    lblSubtotal2.Text = subtotal.ToString("C2");

                }

                reader2.Close();



                string query = "SELECT * FROM [Delivery_address] INNER JOIN [User] ON [Delivery_address].UserId = [User].UserId WHERE [User].UserId = @auserId";


                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@auserId", userId);

                // Create a SqlDataReader object and execute the SELECT statement
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // Declare a variable to store the delivery addresses
                    string deliveryAddresses = "";

                    // Loop through the SqlDataReader and append each delivery address to the variable
                    while (reader.Read())
                    {
                        deliveryAddresses += $"AddressId: {reader["AddressId"]}<br/>";
                        deliveryAddresses += $"AddressLine1: {reader["AddressLine1"]}<br/>";
                        deliveryAddresses += $"AddressLine2: {reader["AddressLine2"]}<br/>";
                        deliveryAddresses += $"City: {reader["City"]}<br/>";
                        deliveryAddresses += $"State: {reader["State"]}<br/>";
                        deliveryAddresses += $"PostalCode: {reader["PostalCode"]}<br/>";
                        deliveryAddresses += "<br/>";
                    }





                    string order = "Not Complete";
                    string deliveryAddress = "Tarc";
                    DateTime currentTime = DateTime.Now;
                    DateTime currentDate = currentTime.Date;
                    Console.WriteLine("Current date: " + currentDate.ToShortDateString());

                    string insertcartProduct = @"INSERT INTO [Order] (UserId, orderStatus, subTotal, orderDateTime, DepartureDateTime, deliveryAddress)VALUES(@userID,@orderStatus,@subTotal,@orderDateTime,@DepartureDateTime,@deliveryAddress)";
                    SqlCommand cmdinsertcartProduct = new SqlCommand(insertcartProduct, connection);

                    cmdinsertcartProduct.Parameters.AddWithValue("@userID", userId);
                    cmdinsertcartProduct.Parameters.AddWithValue("@orderStatus", order);
                    cmdinsertcartProduct.Parameters.AddWithValue("@subTotal", subtotal);
                    cmdinsertcartProduct.Parameters.AddWithValue("@orderDateTime", currentTime);
                    cmdinsertcartProduct.Parameters.AddWithValue("@DepartureDateTime", currentDate);
                    cmdinsertcartProduct.Parameters.AddWithValue("@deliveryAddress", deliveryAddress);

                    cmdinsertcartProduct.ExecuteNonQuery();

                    string query7 = "SELECT CartID FROM Cart WHERE UserId = @UserId";
                    SqlCommand command1 = new SqlCommand(query7, connection);
                    command1.Parameters.AddWithValue("@UserId", userId);

                    cartID = (int)command1.ExecuteScalar();


                    string query6 = "DELETE FROM cartProduct WHERE cartID = @cartID"; ;
                    SqlCommand commandDelete = new SqlCommand(query6, connection);
                    commandDelete.Parameters.AddWithValue("@cartID", cartID);
                    commandDelete.ExecuteNonQuery();

                    string script = "alert('Order is successfull'); window.location.href='Home.aspx';";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                    //string script = @"<script type='text/javascript'>$('#Receipt').modal('show');</script>";
                    // ScriptManager.RegisterStartupScript(this, GetType(), "OpenModal", script, false);


                    connection.Close();
                }

            }
        }
        protected void btnGoOut_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["Userid"]);
            int cartID = 0;
            
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

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query6 = "DELETE FROM cartProduct WHERE cartID = @cartID"; ;
                SqlCommand commandDelete = new SqlCommand(query6, connection);
                commandDelete.Parameters.AddWithValue("@cartID", cartID);
                commandDelete.ExecuteNonQuery();

                string script = "alert('Order is successfull'); window.location.href='Home.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }  
}