<%@ Page Title="" Language="C#" MasterPageFile="~/jury/jury.master" AutoEventWireup="true" CodeFile="jchangePassword.aspx.cs" Inherits="jury_jchangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
  <div class="section">    
    <div class="row"  >
    <div class="card-panel " >
        <fieldset>
        
            <h5 style="font-family:'Bookman Old Style';font-size:x-large;font-weight:bold;color:#8D0D64"  class="center">Change Password</h5>
            
           <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="oldpswd" type="password" value="" pattern=".{6,}" title="Six or more characters" runat="server"  class="validate"></asp:TextBox>
                    <label for="password">Old Password</label>
                    
                </div>
                <asp:RequiredFieldValidator ID="txtOldpasswd" runat="server" ControlToValidate="oldpswd" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="newpasswd" type="password" value="" pattern=".{6,}" title="Six or more characters" runat="server"  class="validate"></asp:TextBox>
                    <label for="password">Password</label>
                    
                </div>
                <asp:RequiredFieldValidator ID="txtOldpass" runat="server" ControlToValidate="newpasswd" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox id="repasswd" type="password" value="" pattern=".{6,}" title="Six or more characters" runat="server" class="validate"></asp:TextBox>
                    <label for="cnfpasswd">Confirm Password</label>
                    
                </div>
                <asp:RequiredFieldValidator ID="txtNewpass" runat="server" ControlToValidate="repasswd" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="comparePasswd" runat="server" ControlToCompare="newpasswd" ControlToValidate="repasswd" Type="String" operator="Equal" ErrorMessage="Not Matching" Font-Names="Segoe UI" ForeColor="Red"></asp:CompareValidator>
            </div>
              
            <div class="row">   
                <div class="center ">
                    <div class="icon-block">
                        <asp:Button ID="chngepasswordbtn" class="waves-effect waves-light btn" style="background-color:#8D0D64"  runat="server"   text="Change Password"  formmethod="post" OnClick="chngepasswordbtn_Click"   />
                       
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="center">
                    <asp:Label ID="changepasswordpage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </div>
            </div>
        
        </fieldset>
</div>
</div>
</div>
</div>


</asp:Content>

