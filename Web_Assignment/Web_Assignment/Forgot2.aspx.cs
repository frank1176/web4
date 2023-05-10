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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["UserID"] != null)
                {
                    int userId = Convert.ToInt32(Request.QueryString["UserID"]);
                    // Load product details using the productID and populate the form for editing
                    SqlConnection con;
                    string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    con = new SqlConnection(strCon);
                    con.Open();
                    string query = "SELECT * FROM [User] WHERE UserId=@userID";

                    SqlCommand cmdSelectProduct = new SqlCommand(query, con);

                    cmdSelectProduct.Parameters.AddWithValue("@userID", userId);

                    SqlDataReader reader = cmdSelectProduct.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        lblSecQ.Text = reader["Question"].ToString();
                        String answer = reader["Answer"].ToString();
                        if (txtSecAns.Text.Equals(answer))
                        {
                            Response.Redirect("Forgot3.aspx");
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Wrong answer')", true);
                        }
                    }
                    else
                    {


                    }
                }
                else
                {

                }
            }
        }
    }
}