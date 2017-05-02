using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_webdesign_management : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admininfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void lnkDownload_Click(object sender, EventArgs e)
    {

    }
    

    protected void btnApproved_Click(object sender, EventArgs e)
    {
        string qno = "";
        string userid = "";
        string username = "";
        string file = "";
        string fileurl = "";
       
        int c = 0,c1=0,c2=0;
        for (int i = 0; i < GridView1.Rows.Count;i++ )
        {
            CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("cbSelect");
            GridViewRow r=GridView1.Rows[i];
            if (ch.Checked == true)
            {

                qno = r.Cells[0].Text;
                userid = r.Cells[1].Text;
                username = r.Cells[2].Text;
                file = r.Cells[4].Text;
                fileurl = r.Cells[3].Text;


                string checkfile = String.Format("Select count(*) from Webdesigntable where Userid='{0}' and Qno='{1}'", userid, qno);
                string query = String.Format("INSERT INTO Webdesigntable (Userid,Username,Qno,Filename,Fileurl,jsaurabh2794_jury,sakshirani1413_jury,stmsaurabh94_jury,suchikumari22_jury,Finalmarks)values('{0}','{1}','{2}','{3}','{4}','0','0','0','0','0')", userid, username, qno, file, fileurl);
                string query1 = String.Format("Update Webdesigntable set Filename='{0}',Fileurl='{1}' where Userid='{2}' and Qno='{3}'", file, fileurl, userid, qno);


                try
                {
                    using (con = new SqlConnection(constr))
                    {
                        if (con.State != ConnectionState.Open)
                            con.Open();
                        using (cmd = new SqlCommand(checkfile, con))
                        {

                            int count = (int)cmd.ExecuteScalar();

                            if (count == 0)
                            {
                                cmd.CommandText = query;
                                cmd.ExecuteNonQuery();
                                c = 1;

                            }
                            else
                            {
                                cmd.CommandText = query1;
                                cmd.ExecuteNonQuery();
                                c1 = 1;
                            }
                        }

                    }




                }
                catch (Exception ee)
                {
                    lblmsg.Text = ee.Message;
                }
                finally
                {
                    con.Close();
                }

            }
            else 
            {
                c2 = 1;
            }
            

        }

        if (c == 1 || c1==1)
        {
            string message = "All Talent is succcessfully approved.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            Response.AppendHeader("Refresh", "1;url=webdesign_management.aspx");

        }
        else if (c2 == 1)
        {
            lblmsg.Text = "You have not select any talent.plz select...";
        }
        else {
            lblmsg.Text = "Talent, You have selected already approved.";
        }
   
    }
    
    
}