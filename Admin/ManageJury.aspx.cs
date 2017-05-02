using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageJury : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
   // string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
    string constr = ConfigurationManager.ConnectionStrings["TalentHunt_ConnectionString"].ToString();
    SqlDataAdapter adap = null;
    DataTable dtb = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admininfo"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if(!IsPostBack)
        {
            FillGrid();
        }

    }


    protected void FillGrid()
    {
       String query = "SELECT Name,Email,Juryid,Mobile,Specialization,Password,Display from Jury";
        try
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                using (adap = new SqlDataAdapter(query, con))
                {
                    dtb = new DataTable("Jury");
                    // fill the data table object
                    adap.Fill(dtb);
                    //juryview.DataSource = dtb;
                    juryview.DataBind();
                }
                con.Close();
            }
        }
        catch (SqlException ee)
        {
           lblMsg.Text = ee.Message;
        }
    }
    protected void juryview_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAddjury_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {

            string checkjury = string.Format("select count(*) from Jury where Juryid='{0}' and Email='{1}' ",lblJuryid.Text.Trim(),txtEmail.Text.Trim());
            string insertUser = string.Format("Insert into Jury (Name,Email,Juryid,Mobile,Specialization,Password,Display) values ('{0}','{1}','{2}','{3}','{4}','{5}','../images/default-avatar.png')", txtName.Text, txtEmail.Text.Trim(), lblJuryid.Text.Trim(), lblMobile.Text.Trim(), DropDownList1.Text, lblPassword.Text.Trim());
            try { 
                using(con=new SqlConnection(constr))
                {

                    if (con.State != ConnectionState.Open)
                        con.Open();
                    using(cmd=new SqlCommand(checkjury,con))
                    {
                        int count = (int)cmd.ExecuteScalar();
                        if (count == 0)
                        {
                            cmd.CommandText = insertUser;
                            count = cmd.ExecuteNonQuery();
                            if (count > 0)
                            {

                                string message = "Successfully Added.";
                                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                                sb.Append("<script type = 'text/javascript'>");
                                sb.Append("window.onload=function(){");
                                sb.Append("alert('");
                                sb.Append(message);
                                sb.Append("')};");
                                sb.Append("</script>");
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                                Response.AppendHeader("Refresh", "1;url=Managejury.aspx");
                            }

                        }
                        else {
                            lblMsg.Text = "Jury is already exists.";
                            clear();
                        }
                    
                    }
                }
            
            
            }catch(Exception ee)
            { lblMsg.Text = ee.Message;
            clear();
            }
            finally{
                con.Close();
            }
        }
    }
    public void clear()
    {
        txtName.Text = txtEmail.Text = lblJuryid.Text = lblMobile.Text = lblPassword.Text = "";
    
    }
   
    protected void juryview_RowDeleted(object sender, GridViewDeleteEventArgs e)
    {
        string id = (string)e.Keys[0];


        string query = string.Format("DELETE FROM Jury WHERE Juryid = '{0}'", id);

        int count = 0;
        try
        {
            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                using (cmd = new SqlCommand(query, con))
                {

                    count = cmd.ExecuteNonQuery();

                    if (count != 0)
                    {
                        lblMsg.Text = "Jury deleted.";

                    }
                }
                con.Close();
            }
        }
        catch (SqlException ee)
        {
            lblMsg.Text = ee.Message;
        }

    }
    protected void juryview_RowEditing(object sender, GridViewEditEventArgs e)
    {
        juryview.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void juryview_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        string juryid = (string)e.Keys[0];
        
        string name = e.NewValues[0].ToString();
        string email = e.NewValues[1].ToString();
        string mobile = e.NewValues[2].ToString();
        string specialization = e.NewValues[3].ToString();
        string password = e.NewValues[4].ToString();

        string query = string.Format("update Jury set Name='{0}',Email='{1}',Mobile='{2}',Specialization='{3}',Password='{4}' where Juryid='{5}'", name, email, mobile, specialization, password, juryid);

        try
        {

            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                    con.Open();

                using (cmd = new SqlCommand(query, con))
                {
                    int count = (int)cmd.ExecuteNonQuery();
                    if (count > 0)
                    {
                        lblMsg.Text = "Updated!";

                    }
                    else
                    {
                        lblMsg.Text = "Some error occured.please try again later.";
                    }

                }



            }



        }
        catch (Exception ee)
        {

            lblMsg.Text = ee.Message;
        }
        finally
        {
            con.Close();

        }

    }
    protected void juryview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        juryview.EditIndex = -1;
        FillGrid();
    }
    protected void juryview_RowDeleted1(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void juryview_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
    }
}