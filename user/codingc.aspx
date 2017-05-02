<%@ Page Title="" Language="C#" MasterPageFile="~/user/mainforuser.master" AutoEventWireup="true" CodeFile="codingc.aspx.cs" Inherits="codingc" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 315px;
        }
        .auto-style3 {
            width: 211px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div >
        <p style="margin-top:-15px;  text-align: center; font-family: 'Bookman Old Style'; font-size:40px; font-weight: bold">Coding in C</p>
    </div>
    
    <ul class="collapsible" data-collapsible="accordion" style="margin-top:7%">
        <li>
            <div class="collapsible-header">Question No.1</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Solve the given problem.And upload it in .c format.</p>
                <div style="margin-left: 15%" class="row">
                 
                    
                    <div class="row" style="margin-left: 110px;">
                       <a href="../pdf/Problem A.pdf"  style="font-size:medium" class="waves-effect waves-light btn" download="Problem A.pdf"> Download</a>
                    </div>

                </div>
                 <table style="width: 100%;">
                        <tr>
                            <td style="width:100%">
                                 <div class="file-field input-field" style="width: 100%">
                                    <div class="btn">
                                        <span>Choose File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox runat="server" class="file-path validate" type="text" ID="qn1"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                            <td style="width:50%">
                                <%--<a class="waves-effect waves-light btn">Upload</a>--%>
                            </td>
                         </tr>
                        
                    </table>
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.2</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Solve the given problem.And upload it in .c format.</p>
                <div style="margin-left: 15%" class="row">

                    <div class="row">
                         
                    </div>
                    <div class="row" style="margin-left: 110px;">
                       <a href="../pdf/Problem B.pdf" style="font-size:medium" class="waves-effect waves-light btn" download="Problem B.pdf"> Download</a>
                    </div>
                    </div>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                 <div class="file-field input-field" style="width: 100%">
                                    <div class="btn">
                                        <span>Choose File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox runat="server" class="file-path validate" type="text" ID="TextBox1"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <%--<a class="waves-effect waves-light btn">Upload</a>--%>
                            </td>
                         </tr>
                        
                    </table>
                
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.3</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Solve the given problem.And upload it in .c format.</p>

                <div style="margin-left: 15%" class="row">

                    <div class="row">
                     </div>
                    <div class="row" style="margin-left: 110px;">
                       <a href="../Questions/CODING IN C 2.pdf" class="waves-effect waves-light btn" style="font-size:medium" download="CODING IN C 2.pdf"> Download</a>
                    </div>
                </div>
                 <table style="width: 100%;">
                        <tr>
                            <td>
                                 <div class="file-field input-field" style="width: 100%">
                                    <div class="btn">
                                        <span>Choose File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox runat="server" class="file-path validate" type="text" ID="TextBox2"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <%--<a class="waves-effect waves-light btn">Upload</a>--%>
                            </td>
                         </tr>
                        
                    </table>
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.4</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Question will be added in next phase.</p>

              <!--  <div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="Image3" ImageUrl="~/images/thankspage.jpg" Height="400px" Width="400px" />
                    </div>
                    <div class="row" style="margin-left: 100px;">
                        <asp:LinkButton ID="LinkButton3" class="waves-effect waves-light btn" runat="server">Download</asp:LinkButton>
                    </div>
                </div>-->
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.5</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: larger">Question will be added in next phase.</p>

              <!--  <div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="Image4" ImageUrl="~/images/thankspage.jpg" Height="400px" Width="400px" />
                    </div>
                    <div class="row" style="margin-left: 100px;">
                        <asp:LinkButton ID="LinkButton4" class="waves-effect waves-light btn" runat="server">Download</asp:LinkButton>
                    </div>
                </div>-->
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.6</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Question will be in next phase.</p>

                <!--<div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="Image5" ImageUrl="~/images/thankspage.jpg" Height="400px" Width="400px" />
                    </div>
                    <div class="row" style="margin-left: 100px;">
                        <asp:LinkButton ID="LinkButton5" class="waves-effect waves-light btn" runat="server">Download</asp:LinkButton>
                    </div>
                </div>-->
            </div>
        </li>
    </ul>
    <!--Question Section Complete-->
    <!--Upload section Starts-->


<p style="font-family:'Times New Roman';font-size:large;margin-top:80px"><span style="color:red;font-family:'Times New Roman'">Note:</span>Competition will be started very shortly...</p>

</asp:Content>

