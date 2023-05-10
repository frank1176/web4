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
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string query = "SELECT * FROM [Delivery_address] INNER JOIN [User] ON [Delivery_address].UserId = [User].UserId; ";

            SqlCommand command = new SqlCommand(query, con);

            command.Parameters.AddWithValue("@userId", 4);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            addressRepeater.DataSource = dataTable;
            addressRepeater.DataBind();

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            // Get the index and AddressId of the current repeater item
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            int addressId = Convert.ToInt32((item.FindControl("hfAddressId") as HiddenField).Value);

            // Redirect to the next page with the index and AddressId as query string parameters
            Response.Redirect("Editaddress.aspx?addressId=" + addressId);
        }

    }
}