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
        string label;
        string address;
        string city;
        string state;
        string postcode;
        string note;
        int userId = 4;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["addressID"] != null)
                {
                    int addressID = Convert.ToInt32(Request.QueryString["addressID"]);
                    // use the addressID as needed
                    txtLabel.Text = addressID.ToString();
                }
            }
        }

    }
}