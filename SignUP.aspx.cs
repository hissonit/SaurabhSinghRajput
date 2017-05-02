using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUP : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    string constr = "Data Source=SAURABH; Initial Catalog=TalentHunt; User ID=sa; Password=30316322";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public void clearfield()
    {
        Name.Text = email.Text = userid.Text = Mob.Text = course.Text = password.Text = cnfpasswd.Text = "";
    }
    protected void btn_register(object sender, EventArgs e)
    {
        string query = String.Format("INSERT INTO Users_pending (Name,Email,Userid,Mobile,Course,Password,Display)values('{0}','{1}','{2}','{3}','{4}','{5}','../images/default-avatar.png')", Name.Text, email.Text.Trim(), userid.Text.Trim(), Mob.Text.Trim(), course.Text.Trim(), password.Text.Trim());
        try
        {

            using (con = new SqlConnection(constr))
            {
                if (con.State != ConnectionState.Open)
                {
                    con.Open();

                }
                string checkuser = String.Format("Select count(*) from Users_pending where Userid='{0}' and Email='{1}'",userid.Text.Trim(),email.Text.Trim());
                using (cmd = new SqlCommand(checkuser, con))
                {
                    int countuser = (int)cmd.ExecuteScalar();
                    if (countuser > 0)
                    {
                        registerpagemessage.ForeColor = System.Drawing.Color.Red;
                        registerpagemessage.Text = "Sorry! You have already registered";
                        clearfield();

                    }
                    else
                    {

                        using (cmd = new SqlCommand(query, con))
                        {
                            int c = cmd.ExecuteNonQuery();
                            if (c > 0)
                            {
                                //string createtble = string.Format("insert into Imagetable (Userid,Imageurl) values ('{0}','images/default-avatar.png')", userid.Text.Trim());
                                //cmd.CommandText = createtble;
                                //cmd.ExecuteNonQuery();
                                registerpagemessage.ForeColor = System.Drawing.Color.Green;
                                registerpagemessage.Text = "You have successfully registered.Your account will be active within 24 hours.";
                                
                                clearfield();
                            }
                            else
                            {
                                registerpagemessage.ForeColor = System.Drawing.Color.Red;
                                registerpagemessage.Text = "Something error occured.please try again later.";
                                clearfield();
                            }
                        }
                    }
                }
                
                
                
                
            }
        }
        catch (Exception ee)
        {
            registerpagemessage.Text = ee.Message;
        }
        finally {
            con.Close();
        }

    }
}