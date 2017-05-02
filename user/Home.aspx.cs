﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userinfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if(!IsPostBack)
        {
            userinfo uf = (userinfo)Session["userinfo"];
            string message = string.Format("Hello, {0} ",uf.Name);
            lbname.Text = message;
        }

    }
}