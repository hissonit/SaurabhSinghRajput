
$(document).ready(function () {
    $('.slider').slider({ full_width: true, height: "480px"});

   
});

$(document).ready(function () {

    $(window).on('load', function () { // makes sure the whole site is loaded
        $('#status').fadeOut(); // will first fade out the loading animation
        $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
        $('body').delay(350).css({ 'overflow': 'visible' });
    });
});

function validate()
{
    var uname = document.getElementById('email').value;
    //var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var pwd = document.getElementById('password').value;
    if (uname == "")

    {
        alert('Please enter  Email id or UserID');
        return false;
    }
    else if(pwd=="")
    {
        alert('Please enter Password');
        return false;
    }
    return true;
}

function validate1() {
    var uname = document.getElementById('jemail').value;
    //var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var pwd = document.getElementById('jpassword').value;
    if (uname == "") {
        alert('Please enter  Email id or JuryID');
        return false;
    }
    else if (pwd == "") {
        alert('Please enter Password');
        return false;
    }
    return true;
}

function validate2() {
    var uname = document.getElementById('aemail').value;
    //var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var pwd = document.getElementById('apassword').value;
    if (uname == "") {
        alert('Please enter Email id or  AdminID');
        return false;
    }
    else if (pwd == "") {
        alert('Please enter Password');
        return false;
    }
    return true;
}

$(document).ready(function () {
    $('.collapsible').collapsible({
        accordion: false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
});

$(document).ready(function () {
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
});

