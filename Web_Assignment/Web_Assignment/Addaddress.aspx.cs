using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["role"] != 2)
            {
                Master.btnAdmin.Visible = false;

            }
            else
            {
                Master.btnAdmin.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int auserId = Convert.ToInt32(Session["Userid"]);
            //String role = TextBox1.Text;
            String alabel = txtLabel.Text;
                String aaddress = txtAddress.Text;
                String acity = txtCity.Text;
                String astate = txtState.Text;
                String apostcode = txtPostcode.Text;
                String anote = txtNote.Text;

            System.Diagnostics.Debug.WriteLine("babi: ");
            SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();
            System.Diagnostics.Debug.WriteLine("babi" + auserId);
            string query = @"INSERT INTO [Delivery_address] (AddressLabel, Address, City, State, Postcode, Note, UserId)
                             VALUES (@label, @address, @city, @state, @postcode, @note,  @userId)";
                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@label", alabel);
                command.Parameters.AddWithValue("@address", aaddress);
                command.Parameters.AddWithValue("@city", acity);
                command.Parameters.AddWithValue("@state", astate);
                command.Parameters.AddWithValue("@postcode", apostcode);
                command.Parameters.AddWithValue("@note", anote);
                command.Parameters.AddWithValue("@userId", auserId);
                command.ExecuteNonQuery();

                con.Close();
            Response.Redirect("Addresslist.aspx");
        }
       
        }

    }
