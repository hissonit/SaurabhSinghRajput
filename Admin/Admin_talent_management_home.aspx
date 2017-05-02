<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_talent_Management.master" AutoEventWireup="true" CodeFile="Admin_talent_management_home.aspx.cs" Inherits="Admin_Admin_talent_management_home" %>

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
    <div style="margin-top: 3%;">
        <h2 style="color: black; font-size: 45px; text-align: center; font-family:Verdana; font-weight: bold">Administrator Talent Management Section</h2>
        <div style="margin-left: 20px; font-family: sans-serif; margin-top: 100px;">
            <ol style="list-style-type: circle; font-size: 20px;">
                <li><span class="span">Programming:</span>Here you can manage all uploaded talent of Programming of Users.</li>
                <li><span class="span">Quiz:</span> Here you can manage all uploaded talent of QuiZ of Users.</li>
                <li><span class="span">Arts:</span>Here you can manage all uploaded talent of Arts of Users.</li>
                <li><span class="span">Cultural:</span>Here you can manage all uploaded talent of Cultural of Users. </li>
                <li><span class="span">Gaming:</span>Here you can manage all uploaded talent of Gaming of Users. </li>
            </ol>

        </div>
    </div>





</asp:Content>

