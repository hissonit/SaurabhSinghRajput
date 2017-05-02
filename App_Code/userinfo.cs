using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for userinfo
/// </summary>
public class userinfo
{
    private string name, userid, password,email,course,mobile,imgurl;
	public userinfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public userinfo(string name, string email, string userid,string mobile,string course, string password,string imgurl)
    {
        this.name = name;
        this.userid = userid;
        this.password = password;
        this.email = email;
        this.course = course;
        this.mobile = mobile;
        this.imgurl = imgurl;
    
    }
   
    public string Name
    {
    get
    {
        return name;
    }
        set {
            name = value;
        }

    }
    public string Imgurl
    {
        get
        {
            return imgurl;
        }
        set
        {
            imgurl = value;
        }

    }

    public string Mobile
    {
        get
        {
            return mobile;
        }
        set
        {
            mobile = value;
        }

    }


    public string Userid
    {
        get
        {
            return userid;
        }
        set
        {
            userid = value;
        }

    }


    public string Password
    {
        get
        {
            return password;
        }
        set
        {
            password = value;
        }

    }


    public string Email
    {
        get
        {
            return email;
        }
        set
        {
            email = value;
        }

    }

    public string Course
    {
        get
        {
            return course;
        }
        set
        {
            course = value;
        }

    }
}