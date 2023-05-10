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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //String role = TextBox1.Text;
            String alabel = txtLabel.Text;
            String aaddress = txtAddress.Text;
            String acity = txtCity.Text;
            String astate = txtState.Text;
            String apostcode = txtPostcode.Text;
            String anote = txtNote.Text;
            int auserId = Convert.ToInt32(Session["Userid"]);

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string strInsertUser = @"INSERT INTO [Delivery_address] (AddressLabel, Address, City, State, Postcode, Note, UserId)
                             VALUES (@label, @address, @city, @state, @postcode, @note,  @userId)";
            SqlCommand cmdInsertUser = new SqlCommand(strInsertUser, con);
            cmdInsertUser.Parameters.AddWithValue("@label", alabel);
            cmdInsertUser.Parameters.AddWithValue("@address", aaddress);
            cmdInsertUser.Parameters.AddWithValue("@city", acity);
            cmdInsertUser.Parameters.AddWithValue("@state", astate);
            cmdInsertUser.Parameters.AddWithValue("@postcode", apostcode);
            cmdInsertUser.Parameters.AddWithValue("@note", anote);
            cmdInsertUser.Parameters.AddWithValue("@userId", auserId);
            cmdInsertUser.ExecuteNonQuery();

            con.Close();
        }
    }
}