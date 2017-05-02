using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admininfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if(!IsPostBack)
        {
            Admin adm = (Admin)Session["admininfo"];
            string msg = string.Format("{0}",adm.Name);
            lbname.Text = "Hi, " + msg;
        }
    }
}