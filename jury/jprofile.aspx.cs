using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jury_jprofile : System.Web.UI.Page
{

    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";

    protected void Page_Load(object sender, EventArgs e)
    {    Juryinfo jinfo=(Juryinfo)Session["juryinfo"];
        if (Session["juryinfo"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        if(!IsPostBack)
        {
            lblName.Text = string.Format("{0}",jinfo.Name);
            lblEmail.Text = string.Format("{0}",jinfo.Email);
            lblJuryid.Text = string.Format("{0}",jinfo.Juryid);
            lblSpecial.Text = string.Format("{0}",jinfo.Specialization);
            lblMobile.Text = string.Format("{0}", jinfo.Mobile);
            displaypic.ImageUrl = jinfo.Display;
        }
    }
    protected void chnge_Click(object sender, EventArgs e)
    {
        Juryinfo jinfo = (Juryinfo)Session["juryinfo"];
        if (imageupload.HasFile)
        {
            string ext = Path.GetExtension(imageupload.PostedFile.FileName);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".png")
            {

                string fileName = Path.GetFileName(imageupload.PostedFile.FileName);
                string concat = jinfo.Juryid + "_";
                string newfilename = concat + fileName;
                //imageupload.SaveAs(Server.MapPath + "~/displaypic/");
                imageupload.SaveAs(Request.PhysicalApplicationPath + "/displaypic/" + newfilename);
                string imageSrc = "../displaypic/" + concat + imageupload.PostedFile.FileName;
                displaypic.ImageUrl = imageSrc;
                // string query = string.Format("insert into Imagetable (Userid,Imageurl) values ('{0}','{1}')",uf.Userid,imageSrc);
                // string query1 = string.Format("select count(*) from Imagetable where Userid='{0}'", uf.Userid);
                string query2 = string.Format("update  Jury set Display='{0}' where Juryid='{1}'", imageSrc, jinfo.Juryid);


                try
                {
                    using (con = new SqlConnection(constr))
                    {
                        if (con.State != ConnectionState.Open)
                        { con.Open(); }
                        using (cmd = new SqlCommand(query2, con))
                        {


                            cmd.ExecuteNonQuery();
                            jinfo.Display = imageSrc;
                            Session["userinfo"] = jinfo;
                            string message = "Successfully changed.";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                            Response.AppendHeader("Refresh", "1;url=jprofile.aspx");



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
    protected void update_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Juryinfo jinfo = (Juryinfo)Session["juryinfo"];
            string updateinfo = string.Format("update Jury set Name='{0}',Email='{1}',Mobile='{2}' where Juryid='{3}'", Name.Text, email.Text.Trim(), Mob.Text.Trim(), jinfo.Juryid);
            string emailcheck = string.Format("select count(*) from Jury where Email='{0}'", email.Text.Trim());
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
                                jinfo.Name = Name.Text;

                                jinfo.Email = email.Text.Trim();
                                jinfo.Mobile = Mob.Text.Trim();
                                Session["juryinfo"] = jinfo;
                                string message = "Successfully updated.";
                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                sb.Append("<script type = 'text/javascript'>");
                                sb.Append("window.onload=function(){");
                                sb.Append("alert('");
                                sb.Append(message);
                                sb.Append("')};");
                                sb.Append("</script>");
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                Response.AppendHeader("Refresh", "1;url=jprofile.aspx");
                                
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
}