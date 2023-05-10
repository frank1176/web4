using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int productID = Convert.ToInt32(btnEdit.CommandArgument);
            Response.Redirect("UpdateProduct.aspx?ProductID=" + productID);
           
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int productID = Convert.ToInt32(btnEdit.CommandArgument);

        }
    }
}