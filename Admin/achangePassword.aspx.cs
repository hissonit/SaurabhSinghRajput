
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_achangePassword : System.Web.UI.Page
{

    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["admininfo"]==null)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void chngepasswordbtn_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Admin adm = (Admin)Session["admininfo"];
            //string query1=string.Format("select count(*) from Users where Password='{0}'",oldpswd.Text.Trim());
            string query2 = string.Format("update Admin set Password='{0}' where Adminid='{1}'", newpasswd.Text.Trim(), adm.Adminid);
            try
            {
                using (con = new SqlConnection(constr))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    using (cmd = new SqlCommand(query2, con))
                    {
                        if (adm.Password == oldpswd.Text.Trim())
                        {
                            int count = (int)cmd.ExecuteNonQuery();
                            if (count > 0)
                            {
                                adm.Password = newpasswd.Text.Trim();
                                Session["admininfo"]=adm;
                                 string message = "Passwors is successfully changed.";
                                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                    sb.Append("<script type = 'text/javascript'>");
                                    sb.Append("window.onload=function(){");
                                    sb.Append("alert('");
                                    sb.Append(message);
                                    sb.Append("')};");
                                    sb.Append("</script>");
                                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                    Response.AppendHeader("Refresh", "1;url=achangePassword.aspx");
                                

                            }
                            else
                            {
                                changepasswordpage.Text = "Something error occured.please try again later.";
                            }

                        }
                        else
                        {
                            changepasswordpage.Text = "You have enterened wrong old password.";
                        }
                    }

                }


            }
            catch (Exception ee)
            {
                changepasswordpage.Text = ee.Message;
            }
            finally
            {
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }

            }
        }
    }
}