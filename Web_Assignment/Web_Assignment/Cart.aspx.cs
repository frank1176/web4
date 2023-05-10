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

namespace Web_Assignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["Userid"]);
            int cartID=0;
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
                    //  cartID = (int)command.ExecuteScalar();
                    connection.Close();
                }
            
                if (!IsPostBack)
                {

                   
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "SELECT * FROM Product";
                        string query2 = "SELECT * FROM Product INNER JOIN cartProduct ON Product.ProductID = cartProduct.ProductID WHERE CartID = @CartID";
                      
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@CartID", cartID);
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        cartRepeater.DataSource = dataTable;
                        cartRepeater.DataBind();

                        string queryTest = "SELECT SUM(CP.quantity * P.UnitPrice) AS Subtotal " +
               "FROM cartProduct CP " +
               "INNER JOIN Product P ON CP.ProductID = P.ProductID " +
               "WHERE CP.cartID = @CartID";

                        
                            SqlCommand cmd = new SqlCommand(queryTest, connection);
                            cmd.Parameters.AddWithValue("@cartID", cartID);

                           
                            SqlDataReader reader = cmd.ExecuteReader();

                            if (reader.Read())
                            {

                            decimal subtotal = 0;
                               //subtotal = reader.GetDecimal(0);
                            // do something with the subtotal value, such as display it on the page
                            lblSubtotal.Text = subtotal.ToString("C2");
                        }

                        connection.Close();
                    

                       
                    }
                }
            }
           
        }


        protected void cartRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
                if (e.CommandName == "RemoveCartItem")
                {
                    int productId = Convert.ToInt32(e.CommandArgument);

                  

                   
                }
            
            }


      

        protected void BtnRemove_Click(object sender, EventArgs e)
        {
            int cartID;
            int userId = Convert.ToInt32(Session["UserId"]);
            Button btn = (Button)sender;
                int productId = Convert.ToInt32(btn.CommandArgument);
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
           
                SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE ProductID=@ProductID", con);

                    cmd.Parameters.AddWithValue("@ProductID", productId);
                    cmd.ExecuteNonQuery();


                
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query4 = "SELECT CartId FROM Carts WHERE UserId = @UserId";
                    
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    connection.Open();
                    cartID = (int)cmd.ExecuteScalar();
                }

                string query = "SELECT * FROM Product";
                string query3 = "SELECT * FROM Product INNER JOIN cartProduct ON Product.ProductID = cartProduct.ProductID WHERE CartID = @CartID";

                SqlCommand cmd2 = new SqlCommand("UPDATE Cart SET Count = (SELECT SUM(quantity) FROM CartProduct WHERE CartId = @CartId) WHERE CartId = @CartId", con);
                cmd.Parameters.AddWithValue("@CartId", cartID);


                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@CartID", cartID);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    cartRepeater.DataSource = dataTable;
                    cartRepeater.DataBind();
                    
                
                con.Close();

                }
            
                
            
        }



        
    }
}