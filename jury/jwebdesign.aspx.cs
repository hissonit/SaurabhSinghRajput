using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jury_jwebdesign : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
    int f = 0;
    public string jid="";
    public string column_name="";
    double t1;
    DateTime d2 = new DateTime(2018, 8, 7, 12, 00, 00);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["juryinfo"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        if(!IsPostBack)
        {
            Juryinfo jinfo=(Juryinfo)Session["juryinfo"];
            jid= jinfo.Juryid;
            column_name = jid + "_jury";
            if (DateTime.Now > d2)
            {
                btnSubmt.Visible = true;
                lbl.Text = "00:00:00";
            }
            else {
                Timer1.Enabled = true;
            }
            
        }
    }
    protected void btnSubmt_Click(object sender, EventArgs e)
    {
        Juryinfo jinfo = (Juryinfo)Session["juryinfo"];
          string jid = jinfo.Juryid;
          
          string column_name = jid + "_jury";
        int c = 0;
        for(int i=0;i<Resultview.Rows.Count;i++)
        {

            DropDownList dlist = (DropDownList)Resultview.Rows[i].FindControl("rsltDrpdwn");
             GridViewRow r=Resultview.Rows[i];
             if (dlist.SelectedValue != "")
             {
                 string qno = r.Cells[0].Text;
                 string uid = r.Cells[5].Text;
                 string res = dlist.SelectedItem.Text;
                 c = Int32.Parse(res);
                 string query = string.Format("Update Webdesigntable set " + column_name+"='{0}' where Qno='{1}' and Userid='{2}'  ",c,qno,uid);
                 string query1 = string.Format("Update Webdesigntable set Finalmarks= cast ((jsaurabh2794_jury+sakshirani1413_jury+stmsaurabh94_jury+suchikumari22_jury) as float)/ cast(4 as float) where Qno='{0}' and Userid='{1}'  ",qno,uid);
                 try { 

                     using(con=new SqlConnection(constr))
                     {
                     
                     if (con.State != ConnectionState.Open)
                               con.Open();
                         using(cmd=new SqlCommand(query,con))
                         {
                           cmd.ExecuteNonQuery();
                             f=1;
                             cmd.CommandText = query1;
                             cmd.ExecuteNonQuery();
                         
                         }
                     
                     
                     
                     
                     
                     }
                 
                 
                 
                 
                 }catch(Exception ee)
                 {
                     lblmsg.Text = ee.Message;
                 
                 }
                 finally{
                     con.Close();
                 }


             }
             
        
        
        }
        if (f == 1)
        {
            string message = "Successfully Submitted or Updated.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            Response.AppendHeader("Refresh", "1;url=jwebdesign.aspx");

        }
        else {
            lblmsg.Text = "You have not assigned any result to the participant. ";
        
        }



    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now;
        DateTime d1 = new DateTime(2018, 8, 7, 12, 00, 00);
        TimeSpan t = d1.Subtract(d);
         t1 = t.TotalSeconds;

         if (t1 > 0)
         {
             lbl.Text = " " + t.Days.ToString() + " Days, " + t.Hours.ToString() + ":" + t.Minutes.ToString() + ":" + t.Seconds.ToString();
         }
         else
         {
           //  btnSubmt.Visible = true;
            // btnSubmt.Enabled = true;
            // Timer1.Enabled = false;
             lbl.Text = "00:00:00";
             btnrefresh_Click(sender,e);
         }
        

    }
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("jwebdesign.aspx");
    }
}