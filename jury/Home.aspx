<%@ Page Title="" Language="C#" MasterPageFile="~/jury/jury.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="jury_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
   
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
        <h3 style="color: black; font-size: 50px; text-align: center; font-family: sans-serif; font-weight: bold">Jury Section</h3>
        <div style="margin-left: 20px; font-family: sans-serif; margin-top: 100px;">
            <ol style="list-style-type: circle; font-size: 20px;">
                <li>Programming:Here you can judge all of the talents related to programming and give the judgement according to their performance.</li>
                <li>Quiz:Here you can judge all of the talents related to Quiz and give the judgement according to their performance. </li>
                <li>Arts:Here you can judge all of the talents related to Arts and give the judgement according to their performance.</li>
                <li>Cultural:Here you can judge all of the talents related to Cultural and give the judgement according to their performance. </li>
                <li>Gaming:Here you can judge all of the talents related to Gaming and give the judgement according to their performance. </li>
            </ol>

        </div>
    </div>

</asp:Content>

