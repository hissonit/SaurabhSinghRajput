using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class webdesign : System.Web.UI.Page
{


    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
    bool cmplt = false;
    double sum = 0.00;
    DateTime d2 = new DateTime(2018, 8, 7, 12, 00, 00);
    DateTime d1 = new DateTime(2018, 8, 7, 15, 00, 00);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userinfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }

        if (!IsPostBack)
        {
            if (DateTime.Now > d2)
            {

                btnQn1.Visible = false;
                btnQn2.Visible = false;
                btnQn3.Visible = false;
                if (DateTime.Now > d1)
                {
                    btnpblishrslt.Visible = true;
                    lbl.Text = "00:00:00";
                    cmplttimemsg.ForeColor = System.Drawing.Color.Red;
                    cmplttimemsg.Text = "Competition is over.";

                }
                lbl.Text = "00:00:00";
               }
           

            else {
                Timer1.Enabled = true;
            
            }
        }


    }

   
    protected void btnQn1_click(object sender, EventArgs e)
    {  
        userinfo uf = (userinfo)Session["userinfo"];
        

            bool status = false;
            string serverPath = Server.MapPath("~/uploadTalent/Webdesign_Pending/");
           
            string newPath = "";
           
            string filename = "";
            string newfilename = "";
            long filesize = Qn1.FileContent.Length;
            try
            {
                if (filesize <= 4194304)
                {
                        if (Qn1.HasFile)
                        {
                            filename = Qn1.PostedFile.FileName;
                            newfilename = uf.Userid + "_" + filename;
                            newPath = serverPath + newfilename;
                            string ext = Path.GetExtension(Qn1.PostedFile.FileName);
                   
                                        if (ext.ToLower() == ".zip")
                                        {
                        
                                                Qn1.SaveAs(newPath);
                                                status = true;
                                                //fileurl = "../uploadTalent/Webdesign_Pending/" + newfilename;
                                                string message = "Successfully Uploaded.";
                                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                                sb.Append("<script type = 'text/javascript'>");
                                                sb.Append("window.onload=function(){");
                                                sb.Append("alert('");
                                                sb.Append(message);
                                                sb.Append("')};");
                                                sb.Append("</script>");
                                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                                Response.AppendHeader("Refresh", "1;url=webdesign.aspx");
                        
                       

                                        }
                                        else
                                        {
                                            lblQn1.Text = "Please upload your solution in .zip formate.";

                                        }


                        }
                        else
                        {
                            lblQn1.Text = "Please select a file to upload in .Zip format.";
                        }

            } else {

                            sizemsg.Text = "Size should be maximum 4 of Mb.";
                }

            }
            catch (Exception ee)
            {
                lblQn1.Text = ee.Message;
            }


            if (status)
            {
                string upload_newPath = "~/uploadTalent/Webdesign_Pending/" + newfilename;
                string query1 = string.Format("select count(*) from Webdesigntable_pending where Qno=1 and Userid='{0}'", uf.Userid);
                int qn = 1;
                string query2 = string.Format("insert into Webdesigntable_pending (Userid,Username,Qno,Filename,Fileurl) values('{0}','{1}','{2}','{3}','{4}') ", uf.Userid, uf.Name, qn, filename, upload_newPath);
                string query3 = string.Format("update Webdesigntable_pending set Fileurl='{0}' ,Filename='{1}' where Qno=1", upload_newPath, filename);
                try
                {
                    using (con = new SqlConnection(constr))
                    {
                        if (con.State != ConnectionState.Open)
                        { con.Open(); }

                        using (cmd = new SqlCommand(query1, con))
                        {
                            int count = (int)cmd.ExecuteScalar();
                            if (count == 0)
                            {
                                cmd.CommandText = query2;
                                cmd.ExecuteNonQuery();
                            }
                            else
                            {
                                cmd.CommandText = query3;
                                cmd.ExecuteNonQuery();

                            }

                        }

                    }
                }
                catch (Exception ee)
                {

                    lblQn1.Text = ee.Message;

                }
                finally
                {

                    con.Close();
                }

            }




        }
    protected void btnQn2_Click(object sender, EventArgs e)
    {
        userinfo uf = (userinfo)Session["userinfo"];

        long filesize = Qn2.FileContent.Length;
        bool status = false;
        string serverPath = Server.MapPath("~/uploadTalent/Webdesign_Pending/");
        //string serverPath=Request.PhysicalApplicationPath+"~/uploadTalent/Webdesign_Pending/"
        string newPath = "";
        string newfilename = "";
        //string fileurl = "";
        string filename = "";
        try
        {
            if (filesize <= 4194304)
                {
                        if (Qn2.HasFile)
                        {
                             filename = Qn2.PostedFile.FileName;
                             newfilename = uf.Userid + "_" + filename;
                            newPath = serverPath + newfilename;
                            string ext = Path.GetExtension(Qn2.PostedFile.FileName);

                                                if (ext.ToLower() == ".zip")
                                                {
                                                    Qn2.SaveAs(newPath);
                                                    status = true;
                                                   // fileurl = "../uploadTalent/Webdesign_Pending/" + newfilename;
                                                    string message = "Successfully Uploaded.";
                                                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                                    sb.Append("<script type = 'text/javascript'>");
                                                    sb.Append("window.onload=function(){");
                                                    sb.Append("alert('");
                                                    sb.Append(message);
                                                    sb.Append("')};");
                                                    sb.Append("</script>");
                                                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                                    Response.AppendHeader("Refresh", "1;url=webdesign.aspx");
                                                }
                                                else
                                                {
                                                    lblQn2.Text = "Please upload your solution in .zip formate.";

                                                }


                        }
                        else
                        {
                            lblQn2.Text = "Please select a file to upload in .Zip format.";
                        }
             }
            else
            {

                sizemsg.Text = "Size should be maximum 4 of Mb.";
            }

        }
        catch (Exception ee)
        {
            lblQn2.Text = ee.Message;
        }


        if (status)
        {
            string upload_newPath = "~/uploadTalent/Webdesign_Pending/"+newfilename;
            string query1 = string.Format("select count(*) from Webdesigntable_pending where Qno=2 and Userid='{0}'", uf.Userid);
            int qn = 2;
            string query2 = string.Format("insert into Webdesigntable_pending (Userid,Username,Qno,Filename,Fileurl) values('{0}','{1}','{2}','{3}','{4}') ", uf.Userid, uf.Name, qn, filename,upload_newPath);
            string query3 = string.Format("update Webdesigntable_pending set Fileurl='{0}' , Filename='{1}' where Qno=2", upload_newPath,filename);
            try
            {
                using (con = new SqlConnection(constr))
                {
                    if (con.State != ConnectionState.Open)
                    { con.Open(); }

                    using (cmd = new SqlCommand(query1, con))
                    {
                        int count = (int)cmd.ExecuteScalar();
                        if (count == 0)
                        {
                            cmd.CommandText = query2;
                            cmd.ExecuteNonQuery();
                        }
                        else
                        {
                            cmd.CommandText = query3;
                            cmd.ExecuteNonQuery();

                        }

                    }

                }
            }
            catch (Exception ee)
            {

                lblQn2.Text = ee.Message;

            }
            finally
            {

                con.Close();
            }

        }


        
      
        
       
    }
    protected void btnQn3_Click(object sender, EventArgs e)
    {
        userinfo uf = (userinfo)Session["userinfo"];
        long filesize = Qn3.FileContent.Length;

        bool status = false;
        string serverPath = Server.MapPath("~/uploadTalent/Webdesign_Pending/");
        //string serverPath=Request.PhysicalApplicationPath+"~/uploadTalent/Webdesign_Pending/"
        string newPath = "";
       // string fileurl = "";
        string filename = "";
        string newfilename = "";
        try
        {
           if (filesize <= 4194304)
             {
                            if (Qn3.HasFile)
                            {
                                 filename = Qn3.PostedFile.FileName;
                                newfilename = uf.Userid + "_" + filename;
                                newPath = serverPath + newfilename;
                                string ext = Path.GetExtension(Qn3.PostedFile.FileName);

                                            if (ext.ToLower() == ".zip")
                                            {
                                                Qn3.SaveAs(newPath);
                                                status = true;
                                               // fileurl = "../uploadTalent/Webdesign_Pending/" + newfilename;
                                                string message = "Successfully Uploaded.";
                                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                                sb.Append("<script type = 'text/javascript'>");
                                                sb.Append("window.onload=function(){");
                                                sb.Append("alert('");
                                                sb.Append(message);
                                                sb.Append("')};");
                                                sb.Append("</script>");
                                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                                Response.AppendHeader("Refresh", "1;url=webdesign.aspx");
                                            }
                                            else
                                            {
                                                lblQn3.Text = "Please upload your solution in .zip formate.";

                                            }


                            }
                            else
                            {
                                lblQn3.Text = "Please select a file to upload in .Zip format.";
                            }
                        } 
                  else
                 {

                            sizemsg.Text = "Size should be maximum 4 of Mb.";
                }

        }
        catch (Exception ee)
        {
            lblQn3.Text = ee.Message;
        }


        if (status)
        {
            string upload_newPath = "~/uploadTalent/Webdesign_Pending/" + newfilename;
            string query1 = string.Format("select count(*) from Webdesigntable_pending where Qno=3 and Userid='{0}'", uf.Userid);
            int qn = 3;
            string query2 = string.Format("insert into Webdesigntable_pending (Userid,Username,Qno,Filename,Fileurl) values('{0}','{1}','{2}','{3}','{4}') ", uf.Userid, uf.Name, qn,filename,upload_newPath);
            string query3 = string.Format("update Webdesigntable_pending set Fileurl='{0}'  , Filename='{1}'  where Qno=3", upload_newPath,filename);
            try
            {
                using (con = new SqlConnection(constr))
                {
                    if (con.State != ConnectionState.Open)
                    { con.Open(); }

                    using (cmd = new SqlCommand(query1, con))
                    {
                        int count = (int)cmd.ExecuteScalar();
                        if (count == 0)
                        {
                            cmd.CommandText = query2;
                            cmd.ExecuteNonQuery();
                        }
                        else
                        {
                            cmd.CommandText = query3;
                            cmd.ExecuteNonQuery();

                        }

                    }

                }
            }
            catch (Exception ee)
            {

                lblQn3.Text = ee.Message;

            }
            finally
            {

                con.Close();
            }

        }


        
      
        
       
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now;
        DateTime d1 = new DateTime(2018, 8, 7, 12, 00, 00);
        TimeSpan t = d1.Subtract(d);
       double t1 = t.TotalSeconds;
      

       if (t1 > 0)
       {
           lbl.Text = " " + t.Days.ToString() + " Days, " + t.Hours.ToString() + ":" + t.Minutes.ToString() + ":" + t.Seconds.ToString(); 
        }
       else 
       {
        lbl.Text = "00:00:00";
        Btnrefresh_Click(sender,e);
      }
       
       

    
    
    }
    protected void Btnrefresh_Click(object sender, EventArgs e)
    {

        Response.Redirect("webdesign.aspx");
       
    }
    protected void btnpblishrslt_Click(object sender, EventArgs e)
    {   
        userinfo uf = (userinfo)Session["userinfo"];
        string query = string.Format("select sum(Finalmarks) from Webdesigntable where Userid='{0}' ",uf.Userid);
        try { 
             using(con=new SqlConnection(constr))
             {
              if(con.State!=ConnectionState.Open)
              {
                  con.Open();
              }
                      using(cmd=new SqlCommand(query,con))
                 {
                     SqlDataReader rd = cmd.ExecuteReader();
                     if(rd.HasRows)
                     {
                         rd.Read();
                         
                         sum =(double) rd.GetDouble(0);
                        

                     }
                 
                 }
             
             }
        
        
        }
        catch(Exception ee)
        {
            lblrslt.Text = ee.Message;
        }finally{

            con.Close();
        }


        if (sum != 0)
        {
            sum = sum / (float)3;

            if (sum > 3)
            {
                lblrslt.ForeColor = System.Drawing.Color.Green;
                lblrslt.Text = string.Format("Congratulations!! You have got {0} marks out of 5 and you are eligible for next round.\n Please Stay tuned for next round, will be started very shortly. ", Math.Round(sum,2));
            }
            else
            {
                lblrslt.ForeColor = System.Drawing.Color.Red;
                lblrslt.Text = string.Format("Sorry!! You have got {0} out of 5, and you are not eligible for next round.\nBetter luck next time.", Math.Round(sum, 2));


            }
        }
        else {
            lblrslt.ForeColor = System.Drawing.Color.Red;
            lblrslt.Text = string.Format("Result is in progress.please stay tuned here...or Your result is in pending.");
        
        }
        

        
    }
}
