using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jury_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  
        Juryinfo jinfo=(Juryinfo)Session["juryinfo"];
        if(Session["juryinfo"]==null)
        {
            Response.Redirect("../Default.aspx");
        }
        if(!IsPostBack)
        {
            lbname.Text = string.Format("Hello, {0}",jinfo.Name);
        }
    }
}