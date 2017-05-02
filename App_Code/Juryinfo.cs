using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Juryinfo
/// </summary>
public class Juryinfo
{
    private string name, email, juryid, mobile, specialization, password,display;
	public Juryinfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public Juryinfo(string name,string email,string juryid,string mobile,string specialization,string password,string display)
    {
        this.name = name;
        this.email = email;
        this.juryid = juryid;
        this.mobile = mobile;
        this.specialization = specialization;
        this.password = password;
        this.display = display;
    
    }

    public string Name {

        get { return name; }
        set { name = value; }
    
    }
    public string Email
    {

        get { return email; }
        set { email = value; }

    }
    public string Juryid
    {

        get { return juryid; }
        set { juryid = value; }

    }
    public string Mobile
    {

        get { return mobile; }
        set { mobile = value; }

    }
    public string Specialization
    {

        get { return specialization; }
        set { specialization = value; }

    }
    public string Password
    {

        get { return password; }
        set { password = value; }

    }
    public string Display
    {

        get { return display; }
        set { display = value; }

    }
}