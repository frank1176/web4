using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;

namespace Web_Assignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Product WHERE CategoriesID = 1";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                cartRepeater.DataSource = dataTable;
                cartRepeater.DataBind();



                string query1 = "SELECT * FROM Product WHERE CategoriesID = 2";
                SqlCommand command1 = new SqlCommand(query1, connection);
                SqlDataAdapter adapter1 = new SqlDataAdapter(command1);
                DataTable dataTable1 = new DataTable();
                adapter1.Fill(dataTable1);
                Repeater2.DataSource = dataTable1;
                Repeater2.DataBind();


                string query2 = "SELECT * FROM Product WHERE CategoriesID = 3";
                SqlCommand command2 = new SqlCommand(query2, connection);
                SqlDataAdapter adapter2 = new SqlDataAdapter(command2);
                DataTable dataTable2 = new DataTable();
                adapter2.Fill(dataTable2);
                Repeater3.DataSource = dataTable2;
                Repeater3.DataBind();

                string query3 = "SELECT * FROM Product WHERE CategoriesID = 4";
                SqlCommand command3 = new SqlCommand(query3, connection);
                SqlDataAdapter adapter3 = new SqlDataAdapter(command3);
                DataTable dataTable3 = new DataTable();
                adapter3.Fill(dataTable3);
                Repeater4.DataSource = dataTable3;
                Repeater4.DataBind();

                connection.Close();



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
    }
}