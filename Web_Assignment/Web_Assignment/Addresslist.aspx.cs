using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Web_Assignment
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int userId = Convert.ToInt32(Session["Userid"]);
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();
                string query = "SELECT * FROM [Delivery_address] INNER JOIN [User] ON [Delivery_address].UserId = [User].UserId WHERE [User].UserId = @auserId";


                SqlCommand command = new SqlCommand(query, con);

                command.Parameters.AddWithValue("@auserId", userId);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                addressRepeater.DataSource = dataTable;
                addressRepeater.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            int addressId = Convert.ToInt32(btnDelete.CommandArgument);


            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "DELETE FROM [Delivery_address] WHERE addressID=@AddressId";
            SqlCommand command = new SqlCommand(query, con);

            command.Parameters.AddWithValue("@AddressId", addressId);

            int rowsAffected = command.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                Response.Redirect("Addresslist.aspx");
            }
            else
            {
                // Delete failed, you can show an error message
            }

            con.Close();

        }

        
    }
}
