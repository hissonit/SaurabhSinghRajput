using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_aprofile : System.Web.UI.Page

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
        if (!IsPostBack)
        {
            Admin adm = (Admin)Session["admininfo"];
            string msg1 = string.Format("{0}",adm.Name);
            lblName.Text = msg1;
            string msg2 = string.Format("{0}", adm.Email);
            lblEmail.Text = msg2;
            string msg3 = string.Format("{0}", adm.Mobile);
            lblMobile.Text = msg3;
            string msg4 = string.Format("{0}", adm.Adminid);
            lblAdminid.Text = msg4;
            displaypic.ImageUrl = adm.Display;
        
        }

    }
    protected void imgupload_btn(object sender, EventArgs e)
    {


        Admin adm = (Admin)Session["admininfo"];
        if (imageupload.HasFile)
        {
            string ext = Path.GetExtension(imageupload.PostedFile.FileName);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".png")
            {

                string fileName = Path.GetFileName(imageupload.PostedFile.FileName);
                string concat =adm.Adminid + "_";
                string newfilename = concat + fileName;
                //imageupload.SaveAs(Server.MapPath + "~/displaypic/");
                imageupload.SaveAs(Request.PhysicalApplicationPath + "/displaypic/" + newfilename);
                string imageSrc = "../displaypic/" + concat + imageupload.PostedFile.FileName;
                displaypic.ImageUrl = imageSrc;
                // string query = string.Format("insert into Imagetable (Userid,Imageurl) values ('{0}','{1}')",uf.Userid,imageSrc);
                // string query1 = string.Format("select count(*) from Imagetable where Userid='{0}'", uf.Userid);
                string query2 = string.Format("update  Admin set Display='{0}' where Adminid='{1}'", imageSrc, adm.Adminid);


                try
                {
                    using (con = new SqlConnection(constr))
                    {
                        if (con.State != ConnectionState.Open)
                        { con.Open(); }
                        using (cmd = new SqlCommand(query2, con))
                        {


                            cmd.ExecuteNonQuery();
                            adm.Display = imageSrc;
                           
                            Session["admininfo"] = adm;
                            string message = "Successfully changed.";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                            Response.AppendHeader("Refresh", "1;url=aprofile.aspx");



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
   
    protected void btnUpdate(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Admin adm = (Admin)Session["admininfo"];
            string updateinfo = string.Format("update Admin set Name='{0}',Email='{1}',Mobile='{2}' where Adminid='{3}'", Name.Text, email.Text.Trim(), Mob.Text.Trim(), adm.Adminid);
            string emailcheck = string.Format("select count(*) from Admin where Email='{0}'", email.Text.Trim());
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

                                adm.Name = Name.Text;
                                adm.Email = email.Text.Trim();
                                adm.Mobile = Mob.Text.Trim();
                                Session["admininfo"] = adm;
                                string message = "Successfully Updated.";
                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                sb.Append("<script type = 'text/javascript'>");
                                sb.Append("window.onload=function(){");
                                sb.Append("alert('");
                                sb.Append(message);
                                sb.Append("')};");
                                sb.Append("</script>");
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                Response.AppendHeader("Refresh", "1;url=aprofile.aspx");
                               
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