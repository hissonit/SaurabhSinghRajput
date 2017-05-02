using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.IO;

public partial class profile : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            userinfo uf = (userinfo)Session["userinfo"];
            

            
           
            string message = string.Format("{0} ", uf.Name);
            Label1.Text = message;
            string messageforemail = string.Format("{0}",uf.Email);
            Label2.Text = messageforemail;
            string messageforcourse = string.Format("{0}", uf.Course);
            Label4.Text = uf.Course;
            string messageformobile = string.Format("{0}", uf.Mobile);
            Label3.Text = uf.Mobile;
            string messageforuserid = string.Format("{0}", uf.Userid);
            Label5.Text = uf.Userid;
            
            displaypic.ImageUrl = uf.Imgurl;
            
            

            
        }
    }


    protected void update_btn(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            userinfo uf = (userinfo)Session["userinfo"];
            string updateinfo = string.Format("update Users set Name='{0}',Email='{1}',Mobile='{2}' where Userid='{3}'", Name.Text, email.Text.Trim(), Mob.Text.Trim(), uf.Userid);
            string emailcheck = string.Format("select count(*) from users where Email='{0}'", email.Text.Trim());
            try
            {
                using (con = new SqlConnection(constr))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();

                    }
                    using (cmd = new SqlCommand(emailcheck, con))
                    {
                        int count = (int)cmd.ExecuteScalar();
                        if (count > 0)
                        {
                            profilechange.Text = "This email is already associated with other user";

                        }
                        else
                        {
                            cmd.CommandText = updateinfo;
                            count = (int)cmd.ExecuteNonQuery();
                            if (count > 0)
                            {

                                uf.Name = Name.Text;
                                uf.Email = email.Text.Trim();
                                uf.Mobile = Mob.Text.Trim();
                                Session["userinfo"] = uf;
                                Response.AppendHeader("Refresh", "1;url=profile.aspx");
                                profilechange.Text = "Successfully updated.";
                            }
                            else
                            {
                                profilechange.Text = "Some error occured.please try later.";
                            }

                        }
                    }
                }
            }
            catch (Exception ee)
            {
                profilechange.Text = ee.Message;
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
    protected void chnge_Click(object sender, EventArgs e)
    {
        userinfo uf = (userinfo)Session["userinfo"];
        if (imageupload.HasFile)
        {
            string ext = Path.GetExtension(imageupload.PostedFile.FileName);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".png")
            {
               
                    string fileName = Path.GetFileName(imageupload.PostedFile.FileName);
                    string concat = uf.Userid + "_";
                    string newfilename = concat + fileName;
                    //imageupload.SaveAs(Server.MapPath + "~/displaypic/");
                     imageupload.SaveAs(Request.PhysicalApplicationPath + "/displaypic/" + newfilename);
                    string imageSrc = "../displaypic/" + concat + imageupload.PostedFile.FileName;
                    displaypic.ImageUrl = imageSrc;
                    // string query = string.Format("insert into Imagetable (Userid,Imageurl) values ('{0}','{1}')",uf.Userid,imageSrc);
                    // string query1 = string.Format("select count(*) from Imagetable where Userid='{0}'", uf.Userid);
                    string query2 = string.Format("update  Users set Display='{0}' where Userid='{1}'", imageSrc, uf.Userid);
               
                
                try
                {
                    using (con = new SqlConnection(constr))
                    {
                        if (con.State != ConnectionState.Open)
                        { con.Open(); }
                        using (cmd = new SqlCommand(query2, con))
                        {
                           
                               
                                cmd.ExecuteNonQuery();
                                uf.Imgurl = imageSrc;
                                Session["userinfo"] = uf;
                                string message = "Successfully changed.";
                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                sb.Append("<script type = 'text/javascript'>");
                                sb.Append("window.onload=function(){");
                                sb.Append("alert('");
                                sb.Append(message);
                                sb.Append("')};");
                                sb.Append("</script>");
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                Response.AppendHeader("Refresh", "1;url=profile.aspx");
                               

                            
                        }
                    }

                }
                catch (Exception ee)
                {
                }
                finally { con.Close(); }
               
               
                // Response.AppendHeader("Refresh", "1;url=profile.aspx");
            }
            else 
            {
                //string message = "Only jpg,jpeg and png is supported.";
                //System.Text.StringBuilder sb = new System.Text.StringBuilder();
                //sb.Append("<script type = 'text/javascript'>");
                //sb.Append("window.onload=function(){");
                //sb.Append("alert('");
                //sb.Append(message);
                //sb.Append("')};");
                //sb.Append("</script>");
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }
        
    }
   
}