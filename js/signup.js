$(document).ready(function () {
    $('select').material_select();
});

function validate() {
    var uname = document.getElementById('Name').value;
    var email = document.getElementById('email').value;
    var uid   = document.getElementById('userid').value;
    var mob   = document.getElementById('Mob').value;
    var course = document.getElementById('course').value;
    var pass = document.getElementById('password').value;
    var cnfpass = document.getElementById('cnfpasswd').value;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var mobfilter = /^\d{10}$/;
   
    if (uname == "")
    {
        alert('Please enter Name');
        return false;
    }
    else if (!filter.test(email)) {
        alert('Please enter correct Email Id');
        return false;
    }
    else if (uid == "")
    {

        alert('Please enter user id of Length 6');
        return false;
    }  
    else if(uid.length<6)
    {
        alert('Please enter user id of Length 6 ');
        return false;
    }
    else if(/\s/.test(uid))
    {
        alert('User id should not contain white space');
        return false;
    }
    else if (mob.length!=10) {
        alert('Please enter correct Mobile no of length 10');
        return false;
    }
    else if(course=="")
    {
        alert('Please select Course');
        return false;
    }
    else if (pass == "")
    {
        alert('Please enter your password');
        return false;
    }
    else if (cnfpass == "")
    {
        alert('Please enter your confirm password');
        return false;
    }
    else if(pass!=cnfpass)
    {
        alert('confirm Password is not matching');
        return false;
    }
    return true;
}