using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Admin
/// </summary>
public class Admin
{
    private string name, email, adminid, mobile, password, display;
	public Admin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public Admin(string name,string email,string adminid,string mobile,string password,string display)
    {
        this.name = name;
        this.email = email;
        this.adminid = adminid;
        this.mobile = mobile;
        this.password = password;
        this.display = display;
    }

    public string Name
    {
        get { return name; }
        set { name = value; }
    
    }
    public string Email
    {
        get { return email; }
        set { email = value; }

    }
    public string Adminid
    {
        get { return adminid; }
        set { adminid = value; }

    }
    public string Password
    {
        get { return password ; }
        set { password = value; }

    }
    public string Display
    {
        get { return display; }
        set { display = value; }

    }
    public string Mobile
    {
        get { return mobile; }
        set { mobile = value; }

    }
   

}