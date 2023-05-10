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
    public partial class WebForm16 : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                if (Request.QueryString["addressID"] != null)
                {
                    int addressId = Convert.ToInt32(Request.QueryString["addressID"]);
                    // Load product details using the productID and populate the form for editing
                    SqlConnection con;
                    string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    con = new SqlConnection(strCon);
                    con.Open();
                    string query = "SELECT * FROM Delivery_address WHERE addressID=@addressid";

                    SqlCommand cmdSelectProduct = new SqlCommand(query, con);

                    cmdSelectProduct.Parameters.AddWithValue("@addressid", addressId);

                    SqlDataReader reader = cmdSelectProduct.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        String alabel = reader["addressLabel"].ToString();
                        String aaddress = reader["Address"].ToString();
                        String acity = reader["City"].ToString();
                        String astate = reader["State"].ToString();
                        String apostcode = reader["Postcode"].ToString();
                        String anote = reader["Note"].ToString();


                        txtLabel.Text = alabel;
                        txtAddress.Text = aaddress;
                        txtCity.Text = acity;
                        txtState.Text = astate;
                        txtPostcode.Text = apostcode;
                        txtNote.Text = anote;
                    }
                    else
                    {


                    }
                }
                else
                {
                    Response.Redirect("Addresslist.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int addressID = Convert.ToInt32(Request.QueryString["addressID"]);
            String alabel = txtLabel.Text;
            String aaddress = txtAddress.Text;
            String acity = txtCity.Text;
            String astate = txtState.Text;
            String apostcode = txtPostcode.Text;
            String anote = txtNote.Text;


            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();


            string query = "UPDATE [Delivery_address] SET addressLabel=@label, Address=@address, City=@city, State=@state,  Postcode=@postcode, Note=@note WHERE addressID=@addressId";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@label", alabel);
            command.Parameters.AddWithValue("@address", aaddress);
            command.Parameters.AddWithValue("@city", acity);
            command.Parameters.AddWithValue("@state", astate);
            command.Parameters.AddWithValue("@postcode", apostcode);
            command.Parameters.AddWithValue("@note", anote);
            command.Parameters.AddWithValue("@addressId", addressID);

            int rowsAffected = command.ExecuteNonQuery();

            if (rowsAffected > 0)
            {

                Response.Redirect("Addresslist.aspx");
            }
            else
            {
                // Update failed, you can show an error message
            }

            con.Close();


        }
    }
}