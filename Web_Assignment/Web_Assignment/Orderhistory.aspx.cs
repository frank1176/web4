﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Assignment
{
    public partial class WebForm17 : System.Web.UI.Page
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
    }
}