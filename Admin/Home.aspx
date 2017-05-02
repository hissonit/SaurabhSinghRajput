<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
    <style type="text/css">
        .span {
            font-weight:bold;
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
    <div style="margin-top: 5%;">
        <h2 style="color: #8D0D64; font-size: 50px; text-align: center; font-family: sans-serif; font-weight: bold"><span style="color: lightblue">TALENTDIKHAO</span> WELCOMES YOU!</h2>
        <h3 style="color: black; font-size: 40px; text-align: center; font-family: sans-serif; font-weight: bold">Administrator Section</h3>
        <div style="margin-left: 20px; font-family: sans-serif; margin-top: 100px;">
            <ol style="list-style-type: circle; font-size: 20px;">
                <li><span class="span">Programming:</span>Here, You can approve participant's Programming talent. </li>
                <li><span class="span">Quiz:</span>Here, You can approve participant's Quiz talent.</li>
                <li><span class="span">Arts:</span>Here, You can approve participant's Arts talent. </li>
                <li><span class="span">Cultural:</span>Here, You can approve participant's Cultural talent. </li>
                <li><span class="span">Gaming:</span>Here, You can approve participant's Gaming talent.</li>
            </ol>

        </div>
    </div>



</asp:Content>

