using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
   
    protected void btnsigninclick(object sender, EventArgs e)
    {
        string query = string.Format("select count(*) from Users where Email='"+email.Text.Trim()+"' OR Userid='"+email.Text.Trim()+"'");
        
        string query1 = string.Format("select count(*) from Users where ( Email='" + email.Text.Trim() + "' OR Userid='" + email.Text.Trim() + "') and Password='"+password.Text.Trim()+"'");
        try
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();

                }
                using (cmd = new SqlCommand(query, con))
                {
                    int count = (int)cmd.ExecuteScalar();
                    if (count == 0)
                    {
                        loginmsg.Text = "User does not exists.Please register.";
                    }
                    else
                    {
                        bool status = false;
                        using(cmd=new SqlCommand(query1,con))
                        {
                             count = (int)cmd.ExecuteScalar();
                            if(count==0)
                            {
                                loginmsg.Text = "UserID and Password is not matching.";
                                
                            }
                            else
                            {
                                //code for after successfull login
                                string query2 = string.Format("select * from Users where ( Email='" + email.Text.Trim() + "' OR Userid='" + email.Text.Trim() + "') and Password='" + password.Text.Trim() + "'");
                                cmd.CommandText = query2;
                                SqlDataReader read = cmd.ExecuteReader();
                                if (read.HasRows)
                                {
                                    read.Read();
                                    userinfo uinfo = new userinfo(read.GetString(1),read.GetString(2),read.GetString(3),read.GetString(4),read.GetString(5),read.GetString(6),read.GetString(7));
                                    Session["userinfo"] = uinfo;
                                    status = true;

                                }

                                read.Close();
                                read.Dispose();


                            }

                        }
                        if(status)
                        {
                            Response.Redirect("user/Home.aspx");

                        }


                    }

                }

            }
        }
        catch (Exception ee)
        {
            loginmsg.Text = ee.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }
        }
    }
    protected void btnAdmin_click(object sender, EventArgs e)
    {
        string query = string.Format("select count(*) from Admin where Email='" + aemail.Text.Trim() + "' OR Adminid='" + aemail.Text.Trim() + "'");

        string query1 = string.Format("select count(*) from Admin where ( Email='" + aemail.Text.Trim() + "' OR Adminid='" + aemail.Text.Trim() + "') and Password='" + apassword.Text.Trim() + "'");
        try
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();

                }
                using (cmd = new SqlCommand(query, con))
                {
                    int count = (int)cmd.ExecuteScalar();
                    if (count == 0)
                    {
                        Adminloginmsg.Text = "Admin does not exists.";
                    }
                    else
                    {
                        bool status = false;
                        using (cmd = new SqlCommand(query1, con))
                        {
                            count = (int)cmd.ExecuteScalar();
                            if (count == 0)
                            {
                                Adminloginmsg.Text = "AdminID and Password is not matching.";

                            }
                            else
                            {
                                //code for after successfull login
                                string query2 = string.Format("select * from Admin where ( Email='" + aemail.Text.Trim() + "' OR Adminid='" + aemail.Text.Trim() + "') and Password='" + apassword.Text.Trim() + "'");
                                cmd.CommandText = query2;
                                SqlDataReader read = cmd.ExecuteReader();
                                if (read.HasRows)
                                {
                                    read.Read();
                                    Admin adm = new Admin(read.GetString(1), read.GetString(2), read.GetString(3), read.GetString(4), read.GetString(5), read.GetString(6));
                                    
                                    Session["admininfo"] = adm;
                                    status = true;

                                }

                                read.Close();
                                read.Dispose();


                            }

                        }
                        if (status)
                        {
                            Response.Redirect("Admin/Home.aspx");

                        }


                    }

                }

            }
        }
        catch (Exception ee)
        {
            Adminloginmsg.Text = ee.Message;
        }
        finally
        {
            if (con.State != ConnectionState.Closed)
            {
                con.Close();
            }
        }
    }
    protected void juryloginbtn_Click(object sender, EventArgs e)
    {
        string query = string.Format("select count(*) from Jury where Email='" + jemail.Text.Trim() + "' OR Juryid='" + jemail.Text.Trim() + "'");

        string query1 = string.Format("select count(*) from Jury where ( Email='" + jemail.Text.Trim() + "' OR Juryid='" + jemail.Text.Trim() + "') and Password='" + jpassword.Text.Trim() + "'");
        try
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();

                }
                using (cmd = new SqlCommand(query, con))
                {
                    int count = (int)cmd.ExecuteScalar();
                    if (count == 0)
                    {   

                        juryloginmsg.Text = "Jury does not exists.";
                    }
                    else
                    {
                        bool status = false;
                        using (cmd = new SqlCommand(query1, con))
                        {
                            count = (int)cmd.ExecuteScalar();
                            if (count == 0)
                            {
                                juryloginmsg.Text = "JuryID and Password is not matching.";

                            }
                            else
                            {
                                //code for after successfull login
                                string query2 = string.Format("select * from Jury where ( Email='" + jemail.Text.Trim() + "' OR Juryid='" + jemail.Text.Trim() + "') and Password='" + jpassword.Text.Trim() + "'");
                                cmd.CommandText = query2;
                                SqlDataReader read = cmd.ExecuteReader();
                                if (read.HasRows)
                                {
                                    read.Read();
                                    Juryinfo jinfo = new Juryinfo(read.GetString(1),read.GetString(2),read.GetString(3),read.GetString(4),read.GetString(5),read.GetString(6),read.GetString(7));
                                    Session["juryinfo"] = jinfo;
                                    status = true;

                                }

                                read.Close();
                                read.Dispose();


                            }

                        }
                        if (status)
                        {
                            Response.Redirect("jury/Home.aspx");

                        }


                    }

                }

            }
        }
        catch (Exception ee)
        {
            juryloginmsg.Text = ee.Message;
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