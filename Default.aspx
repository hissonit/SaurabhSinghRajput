<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>TalentDikhao Welcomes You | Show Your Talent</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link rel="icon" href="images/LogoMakr.png" type="image/x-icon">
    <link href="css/mycss.css"  rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    

</head>
<body background="images/background.jpg">
    <!--Navigation code starts here-->
    <form id="form1" runat="server">
    <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo" style="font-size:x-large;margin-left:5%;font-family:'Segoe UI'"><img src="images/LogoMakr.png" /></a>
      <ul id="nav-mobile" style="" class="right hide-on-med-and-down">
        <li><a href="About.aspx">About</a></li>
        <li><a href="#loginsection">LogIN</a></li>
        <li><a href="SignUP.aspx">SignUP</a></li>

      </ul>
    </div>
  </nav>
    <!--Image slider code starts here code starts here-->
    <div class="slider">
    <ul class="slides">
      <li>
        <img src="images/slider1.jpg"> 
        <div class="caption center-align" style="font-family:'Comic Sans MS';">
          <h3>Exhibit your Genius</h3>
          <h5 class="light grey-text text-lighten-3">Upload your talent – Be it paintings, pictures, videos, audios or writings.</h5>
        </div>
      </li>
      <li>
        <img src="images/slider2.jpg"> 
        <div class="caption center-align" style="font-family:'Comic Sans MS';">
          <h3>Engross Your Fans</h3>
          <h5 class="light grey-text text-lighten-3">Promote your talent – Get appreciation and let your fans Spread your Talent…All Over</h5>
        </div>
      </li>
      <li>
        <img src="images/slider3.jpg"> 
        <div class="caption center-align" style="font-family:'Comic Sans MS';">
          <h3>Market your Art</h3>
          <h5 class="light grey-text text-lighten-3">Monetize your talent – Sell your music, artistic creations online and in Events and exhibitions</h5>
        </div>
      </li>
     
    </ul>
  </div>
    <!--slider ends here-->
    <div id="preloader">
                     <div id="status">
                     </div>
                    </div>
    <!--about section and login section-->
    <div class="container">
  <div class="section">
    <div class="" style=";margin-top:130px">
      <div class="col s12 m6">
        <div class="card-panel "  style="background-color:white;border: solid 1px #8D0D64;-webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);">
            <fieldset>
          <h5 style="font-family:'Bookman Old Style';font-size:x-large;" class="center">About</h5>
          <p style="font-family:'Bookman Old Style';font-size:medium;text-align:justify ">This “TALENT DIKHAO” website provides platform to showcase and nurture their talent in the various fields. That's not all, we connect creative people in the same platform who need to hire or search for various special talents for special projects. We connect these two creative sides in one wonderful platform.The aim of this project “TALENT DIKHAO” is to develop an online platform for those people who don’t able to show their talent in public stages. It is a platform where people show their skills in many field, such as programming, singing, dancing, painting, quiz, puzzle and many more. It provides an online platform to show the talent at various level.<a href="About.aspx" style="font-family:'Bookman Old Style';font-size:medium;text-align:justify;text-decoration:none;color:blue ">More</a>
</p>
        </div>
      </div>
       <div class="col s12 m6">
        <div class="card-panel " style="background-color:white;border: solid 1px #8D0D64;-webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);">
            <fieldset>
          <h5 style="font-family:'Bookman Old Style';font-size:x-large;" class="center">Mission</h5>
          <p style="font-family:'Bookman Old Style';font-size:medium;text-align:justify ">People who don’t able to showcase their talent in public stage or people who don’t have time to show their talent in public stage can go through this online platform.
Online talent exhibition is one of the direction provided through the online media or social networking sites, where passionate and focused individual can take part in multiple number of events at one time.
This project “TALENT DIKHAO” is very reliable, efficient and very authentic for searching new and deserving talent. It brings out hidden talents that might remain unrecognized because of lack of platform.The “TALENT DIKHAO” is a newly-developed, self-contained and independent project. It is simple and online with 24*7 days help and support, where maximum success is probable.<a href="About.aspx" style="font-family:'Bookman Old Style';font-size:medium;text-align:justify;text-decoration:none;color:blue ">More</a></p>
        </div>
       </div>
       <div class="col s12 m6">
        <div class="card-panel " style="background-color:white;border: solid 1px #8D0D64;-webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);">
            <fieldset>
           <h5 style="font-family:'Bookman Old Style';font-size:x-large;" class="center">Our Jury Members</h5>
             <div class="center" style="margin-top:5%">
                <div style="margin-top:6%">
                <img src="displaypic/jsaurabh1994_srb.jpg" alt="..." class="img-rounded" height="150px" width="150px">
                <img src="displaypic/stmsaurabh94_srb (2).jpg" alt="..." class="img-rounded"height="150px" width="150px">
                <img src="displaypic/suchikumari22_suchi.jpg" alt="..." class="img-rounded"height="150px" width="150px">
                <img src="displaypic/sakshirani1413_sakshi.jpg" alt="..." class="img-rounded"height="150px" width="150px">
                </div>
            </div>  
        </div>
       </div>
        
<div class="col s12 m4" style="" >
    
<div class="card-panel " id="loginsection" style="border: solid 1px #8D0D64;-webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);" >
        <fieldset>
        
            <h5 style="font-family:'Bookman Old Style';font-size:x-large" class="center">User Login</h5>
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="email"  runat="server"   ></asp:TextBox>
                    <label for="email">Email/UserID</label>
                    
                </div>
            </div>  
              
              
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="password" type="password" runat="server"  class="validate"></asp:TextBox>
                    <label for="password">Password</label>
                    
                </div>
            </div>
              
            <div class="row">   
                <div class="center ">
                    <div class="icon-block">
                       
                        <asp:Button class="waves-effect waves-light btn" id="signinbtn" runat="server"  Text="Login"  OnClientClick="return validate();" OnClick="btnsigninclick" />
                       
                    </div>
                </div>
            </div>



            
            <div class="row">   
                <div class="center ">
                    <asp:Label ID="Newuser" runat="server" ForeColor="#3333CC"> Have you not registered yet ? <asp:HyperLink ID="register" runat="server" NavigateUrl="~/SignUP.aspx" ForeColor="#000099" Font-Size="Medium"> Register</asp:HyperLink></asp:Label>
                </div>
            </div>

        
            <div class="row ">   
                <div class="col " style="margin-left:20%">
                    <div class="icon-block">
                       <a class="waves-effect waves-light btn modal-trigger" style="font-size:15px;background-color:purple" href="#jurylogin">Go To Jury Login</a>
                       
                    </div>
                </div>

                <div class="col " style="margin-left:10%">
                    <div class="icon-block">
                       <a class="waves-effect waves-light btn modal-trigger" style="font-size:15px;background-color:purple;" href="#Adminlogin">Go To Admin Login</a>
                       
                    </div>
                </div>

           </div>
        

            <div class="row">   
                <div class="center ">
                    <asp:Label ID="loginmsg" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        
         </fieldset>
</div>
</div>
</div>
</div>
</div>   
    <!--Featured Artist section-->
    <div class="center" style="margin-top:5%">
      <h3 style="color:#FF552A;font-family:'Bookman Old Style'">FEATURED ARTIST</h3>
      <div style="margin-top:6%">
      <img src="images/artist1.jpg" alt="..." class="img-rounded" height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      <img src="images/artist1.jpg" alt="..." class="img-rounded"height="150px" width="150px">
      </div>
  </div>  
    <!--Footer section-->
    <footer class="page-footer" style="margin-top:150px;background-color:#8D0D64">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text"><img src="images/LogoMakr.png" /></h5>
                <p class="grey-text text-lighten-4"></p>
               </div>
             </div>
           </div>
                
          <div class="footer-copyright">
            <div class="container">
            © 2014 All Rights Reserved.All other trademarks and copyrights are the property of their respective holders.
            <div class="grey-text text-lighten-4 right">
                    <div style="padding:7px;">
					<a href="#"  id="link1" ><img  src="icons/facebook.png"  ></a>
					<a href="#"  id="link2" ><img  src="icons/googleplus.png"  ></a>
					<a href="#"  id="link3"><img  src="icons/linkedin.png" ></a>
					<a href="#"  id="link4"><img  src="icons/twitter.png"  ></a>
					</div>	
            </div>
            </div>
          </div>
        </footer>








        <!-- jury login form -->
        <div id="jurylogin" class="modal" style="border: solid 1px #8D0D64; -webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);">
            <div class="modal-content">

                <fieldset>

                    <h5 style="font-family: 'Bookman Old Style'; font-size: x-large" class="center">Jury Login</h5>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="jemail" runat="server"></asp:TextBox>
                            <label for="jemail">JuryID\EmailID</label>

                        </div>
                    </div>


                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="jpassword" type="password" runat="server" class="validate"></asp:TextBox>
                            <label for="jpassword">Password</label>

                        </div>
                    </div>

                    <div class="row">
                        <div class="center ">
                            <div class="icon-block">

                                <asp:Button class="waves-effect waves-light btn" ID="juryloginbtn" runat="server" Text="Login" OnClientClick="return validate1();" OnClick="juryloginbtn_Click" />

                            </div>
                        </div>
                    </div>





                    <div class="row">
                        <div class="center ">
                            <asp:Label ID="juryloginmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                    </div>

                </fieldset>




            </div>
        </div>
        <!-- jury login form -->

        <!--Admin login form-->
        <div id="Adminlogin" class="modal" style="border: solid 1px #8D0D64; -webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);">
            <div class="modal-content">

                <fieldset>

                    <h5 style="font-family: 'Bookman Old Style',sans-serif; font-size: x-large" class="center">Admin. Login</h5>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="aemail" runat="server"></asp:TextBox>
                            <label for="aemail">AdminID\EmailID</label>
                            

                        </div>
                    </div>


                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="apassword" type="password" runat="server" class="validate"></asp:TextBox>
                            <label for="apassword">Password</label>

                        </div>
                    </div>

                    <div class="row">
                        <div class="center ">
                            <div class="icon-block">

                                <asp:Button class="waves-effect waves-light btn" ID="btnAdmin" runat="server" Text="Login" OnClientClick="return validate2();" OnClick="btnAdmin_click" />

                            </div>
                        </div>
                    </div>





                    <div class="row">
                        <div class="center ">
                            <asp:Label ID="Adminloginmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                    </div>

                </fieldset>




            </div>
        </div>
        <!--Admin Login form-->






    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="js/myjquery.js"></script>  
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    
</body>
</html>
