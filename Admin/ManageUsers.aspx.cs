using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageUsers : System.Web.UI.Page
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
    protected void btnApprovw_Click(object sender, EventArgs e)
    {
        string name = "";
        string email = "";
        string userid = "";
        string mobile = "";
        string course = "";
        string password = "";
        int c = 0;
        for (int i = 0; i < GridView1.Rows.Count;i++ )
        {
            CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("selectuser");
            GridViewRow r=GridView1.Rows[i];
            if (ch.Checked == true)
            {
                 
                 name = r.Cells[1].Text;
                 email = r.Cells[2].Text;
                 userid = r.Cells[3].Text;
                 mobile = r.Cells[4].Text;
                 course = r.Cells[5].Text;
                 password = r.Cells[6].Text;
                  
                  string checkuser = String.Format("Select count(*) from Users where Userid='{0}' and Email='{1}'",userid,email);
                   string query = String.Format("INSERT INTO Users (Name,Email,Userid,Mobile,Course,Password,Display)values('{0}','{1}','{2}','{3}','{4}','{5}','../images/default-avatar.png')", name,email,userid,mobile,course,password);

                  
                   try
                   {
                       using (con = new SqlConnection(constr))
                       {
                           if (con.State != ConnectionState.Open)
                               con.Open();
                           using (cmd = new SqlCommand(checkuser, con))
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
                                   continue;
                               }
                           }

                       }




                   }
                   catch (Exception ee)
                   {
                       l0.Text = ee.Message;
                   }
                   finally {
                       con.Close();
                   }
            
            }
            

        }

        if (c == 1)
        {
            string message = "Successfully approved.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            Response.AppendHeader("Refresh", "1;url=ManageUsers.aspx");

        }
        else 
        {
            l0.Text = "All users are already approved.";
        }
   
    }
}