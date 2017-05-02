<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUP.aspx.cs" Inherits="SignUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>SignUP|TalentDikhao Welcomes You</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link rel="icon" href="images/LogoMakr.png" type="image/x-icon">
    <link href="css/signup.css" rel="stylesheet"/>
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
 </head>   

<body background="images/city.jpg">
    <form id="form2" runat="server">
   <!--NavBar starts-->
     <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo" style="font-size:x-large;margin-left:5%;font-family:'Segoe UI'"><img src="images/LogoMakr.png" /></a>
      <ul id="nav-mobile" style="" class="right hide-on-med-and-down">
        <li><a href="About.aspx">About</a></li>
       <li><a href="Default.aspx#loginsection">SignIN</a></li>
      </ul>
    </div>
  </nav>
   <!--Navbar ends--> 
    
    <!--registration form-->

   <div class="container">
  <div class="section">    
    <div class="row" style="width:100%;margin-top:05%;margin-left:3%" >
    <div class="card-panel " style="border: solid 1px #8D0D64;-webkit-box-shadow: 0 0px 10px  rgba(0,0,0,0.9);" >
        <fieldset>
        
            <h5 style="font-family:'Bookman Old Style';font-size:xx-large;font-weight:bold;color:#8D0D64"  class="center">SignUP</h5>
            <div class="row">
            
                <div class="input-field col s6">
                    <asp:TextBox id="Name" type="text" runat="server" value=""   class="validate"></asp:TextBox>
                    <label for="Name">Name</label>
                    
                </div>
             
            
            
                <div class="input-field col s6">
                    <asp:TextBox id="email" type="email" runat="server" value=""  class="validate"   ></asp:TextBox>
                    <label for="email">Email</label>
                    
                </div>
           
           </div>
            
            <div class="row">
                <div class="input-field col s6">
                    <asp:TextBox id="userid" type="text" runat="server" value=""  class="validate"   ></asp:TextBox>
                    <label for="userid">UserID</label>
                    
                </div>
            

            
                <div class="input-field col s6">
                    <asp:TextBox id="Mob" type="number" runat="server" value="" ></asp:TextBox>
                    <label for="Mob">Mobile</label>
                    </div>
            </div> 
            
            <div class="row">
                <div class="input-field col s12">
                   <asp:DropDownList class="validate"  ID="course" runat="server">
                           <asp:ListItem Value="">None</asp:ListItem>
                           <asp:ListItem Value="B.Tech">B.Tech</asp:ListItem>
                           <asp:ListItem Value="M.Tech">M.Tech</asp:ListItem>
                           <asp:ListItem Value="BCA">BCA</asp:ListItem>
                           <asp:ListItem Value="MCA">MCA</asp:ListItem>
                   </asp:DropDownList>
                    
                  <label>Course</label>
                 </div>
            </div> 

            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="password" type="password" value="" pattern=".{6,}" title="Six or more characters" runat="server"  class="validate"></asp:TextBox>
                    <label for="password">Password</label>
                    
                </div>
            </div>

            
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="cnfpasswd" type="password" value="" pattern=".{6,}" title="Six or more characters" runat="server" class="validate"></asp:TextBox>
                    <label for="cnfpasswd">Confirm Password</label>
                    
                </div>
            </div>
              
            <div class="row">   
                <div class="center ">
                    <div class="icon-block">
                        <asp:Button class="waves-effect waves-light btn" style="background-color:#8D0D64;width:350px"  runat="server"   text="Register"  formmethod="post" OnClientClick="return validate();" OnClick="btn_register" />
                       
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="center">
                    <asp:Label ID="registerpagemessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </div>
            </div>
        
        </fieldset>
</div>
</div>
</div>
</div>

    <!--registration form end-->

    <!--footer-->
     <footer class="page-footer" style="margin-top:150px;background-color:#8D0D64">
         <!-- <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text"><img src="images/LogoMakr.png" /></h5>
                <p class="grey-text text-lighten-4">Show your Talent</p>
               </div>
             </div>
           </div>-->
                
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
    <!--footer end-->
       
</form>
    
   
    
    
    
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
     <script type="text/javascript" src="js/materialize.min.js"></script>  
     <script type="text/javascript" src="js/signup.js"></script>  
     
</body>
</html>
