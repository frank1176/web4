using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        public LinkButton btnprofile
        {
            get
            {
                return this.btnProfile;
            }
        }
        public LinkButton btnlogin
        {
            get
            {
                return this.btnLogin;
            }
        }
        public LinkButton btnlogout
        {
            get
            {
                return this.btnLogout;
            }
        }
        public LinkButton btncart
        {
            get
            {
                return this.btnCart;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
            
        }
    }
}