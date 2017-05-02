
<%@ Page Title="" Language="C#" MasterPageFile="~/user/mainforuser.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .span {
            font-weight:bold;
        }
        .auto-style2 {
            width: 390px;
            
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; margin-top: -5px;">
        <tr>
            <td id="welcomepagename" class="auto-style2">
                <asp:Label ID="lbname" runat="server" Text=""></asp:Label>
            </td>
            <td id="welcomepagedate">Today:<%=System.DateTime.Now.Date.ToString("dd-MMM-yyyy") %>
            </td>

        </tr>

    </table>
   <!--Welcome Message-->
    <div style="margin-top:10%;">
    <h2 style="color: #8D0D64; font-size: 50px; text-align: center; font-family: sans-serif; font-weight: bold"><span style="color:lightblue">TALENTDIKHAO</span> WELCOMES YOU!</h2>
    <div style="margin-left: 20px; font-family: sans-serif; margin-top: 100px;">
        <ol style="list-style-type: circle; font-size: 20px;">
            <li><span class="span">Programming:</span>Here, You can upload your Programming talent and check your Programming knowledge.</li>
            <li><span class="span">Quiz:</span>Here, You can upload your Quiz talent and check your Quiz knowledge. </li>
            <li><span class="span">Arts:</span>Here, You can upload your Arts talent and check your Arts knowledge.</li>
            <li><span class="span">Cultural:</span>Here, You can upload your Cultural talent and check your Cultural knowledge.</li>
            <li><span class="span">Gaming:</span> Here, You can upload your Gaming talent and check your Gaming knowledge.</li>
        </ol>
        
    </div>
        </div>



</asp:Content>

