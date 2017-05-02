using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changePassword : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void chngepass_btnclick(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            userinfo uinfo = (userinfo)Session["userinfo"];
            //string query1=string.Format("select count(*) from Users where Password='{0}'",oldpswd.Text.Trim());
            string query2 = string.Format("update Users set Password='{0}' where Userid='{1}'", newpasswd.Text.Trim(), uinfo.Userid);
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
                        if (uinfo.Password == oldpswd.Text.Trim())
                        {
                            int count = (int)cmd.ExecuteNonQuery();
                            if (count > 0)
                            {
                                uinfo.Password = newpasswd.Text.Trim();
                                Session["userinfo"] = uinfo;
                                changepasswordpage.Text = "Passwors is successfully changed";

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