<%@ Page Title="" Language="C#" MasterPageFile="~/user/mainforuser.master" AutoEventWireup="true" CodeFile="webdesign.aspx.cs" Inherits="webdesign" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 315px;
        }
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
           border-radius:5px;
        }
        .auto-style4:hover {
           background-color:lightgray;
           cursor:pointer;
           border-radius:5px;
        }
    </style>
   
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
        <p style="margin-top:-15px;  text-align: center; font-family: 'Bookman Old Style'; font-size:40px; font-weight: bold">Web Designing</p>
    </div>

    <!--Count Down Timer-->
     
          <div >
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick1" Enabled="False">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
           <asp:AsyncPostBackTrigger ControlID="Timer1" />
        </Triggers>
        <ContentTemplate>
            <div style="float:right"><p style="color:blue;font-family:'Agency FB';font-size:20px;display:inline-block;font-weight:bold">Time Remaining to Go:</p> <asp:Label ID="lbl"  runat="server" Font-Names="Microsoft Sans Serif" ForeColor="#660033" Font-Bold="True" Font-Size="Larger" CssClass="auto-style2"></asp:Label></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div><br />
    
     <!--Count Down Timer-->


    
    <ul class="collapsible" data-collapsible="accordion" style="margin-top:7%">
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.1</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Design this HTML page. And upload it below.Only .Zip formate will be accepted.</p>
                <div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="htmlpage" ImageUrl="~/images/thankspage.jpg" Height="400px" Width="400px" />
                    </div>
                    <div class="row" style="margin-left: 110px;">
                       <a href="../images/thankspage.jpg"  style="font-size:medium" class="waves-effect waves-light btn" download="download"> Download</a>
                    </div>

                </div>
                 <table style="width: 100%;">
                        <tr>
                            <td>
                                <div  style="width: 100%" >
                                   
                                    <asp:FileUpload ID="Qn1" runat="server" BackColor="White" style="color:blue;" />
                                    
                                    <div style="text-align:center">
                                        <asp:Label ID="lblQn1" runat="server" Text="" ForeColor="Red"></asp:Label></div>
                                    
                                    <%-- <div class="btn">
                                        <span>Choose File</span>
                                        <asp:TextBox runat="server" type="file"></asp:TextBox>
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox runat="server" class="file-path validate" type="text" ID="qn1"></asp:TextBox>
                                    </div>--%>
                                </div>
                               
                            </td>
                            <td>
                                <asp:Button ID="btnQn1" runat="server" class="waves-effect waves-light btn" Text="Upload" OnClick="btnQn1_click"></asp:Button>
                               </td>
                         </tr>
                        
                    </table>
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons"></i>Question No.2</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Design this HTML page. And upload it below.Only .Zip formate will be accepted.</p>
                <div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="Image1" ImageUrl="~/Questions/Web1.PNG" Height="400px" Width="600px" />
                    </div>
                    <div class="row" style="margin-left: 110px;">
                       <a href="../Questions/Web1.PNG" style="font-size:medium" class="waves-effect waves-light btn" download="Web1.PNG"> Download</a>
                    </div>
                    </div>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <div style="width: 100%">
                                   
                                    <asp:FileUpload ID="Qn2" runat="server" style="color:blue;" />
                                    <div style="text-align:center">
                                        <asp:Label ID="lblQn2" runat="server" Text="" ForeColor="Red"></asp:Label></div>
                                   
                                     <%--<div class="btn">
                                        <span>Choose File</span>
                                        <input type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox runat="server" class="file-path validate" type="text" ID="qn2"></asp:TextBox>
                                    </div>--%>
                                </div>
                            </td>
                            <td>
                                 <asp:Button ID="btnQn2" runat="server" class="waves-effect waves-light btn" Text="Upload" OnClick="btnQn2_Click"></asp:Button>
                            
                            </td>
                         </tr>
                        
                    </table>
                
            </div>
        </li>
        <li>
            <div class="collapsible-header">Question No.3</div>
            <div class="collapsible-body">
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Design this HTML page. And upload it below.Only .Zip formate will be accepted.</p>

                <div style="margin-left: 15%" class="row">

                    <div class="row">
                        <asp:Image runat="server" ID="Image2" ImageUrl="~/Questions/Web2.png" Height="400px" Width="400px" />
                    </div>
                    <div class="row" style="margin-left: 110px;">
                       <a href="../Questions/Web2.png" class="waves-effect waves-light btn" style="font-size:medium" download="Web2.png"> Download</a>
                    </div>
                </div>
                 <table style="width: 100%;">
                        <tr>
                            <td>
                                <div  style="width: 100%">
                                  
                                    <asp:FileUpload ID="Qn3" runat="server" style="color:blue;" />
                                    <div style="text-align:center">
                                        <asp:Label ID="lblQn3" runat="server" Text=""></asp:Label></div>
                                    <%-- <div class="btn">
                                        <span>Choose File</span>
                                        <input ID="TextBox3" runat="server" type="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <asp:TextBox ID="qn3" runat="server" class="file-path validate" type="text"></asp:TextBox>
                                    </div>--%>
                                </div>
                            </td>
                            <td>
                                 <asp:Button ID="btnQn3" runat="server" class="waves-effect waves-light btn" Text="Upload" OnClick="btnQn3_Click"></asp:Button>
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
                <p style="font-family: Calibri Light,'Times New Roman',sans-serif,Verdana; font-size: large">Question will be added in next phase.</p>

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



<center> <asp:Label ID="cmplttimemsg" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Calibri Light"></asp:Label></center> 
 <center><asp:Label ID="sizemsg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label></center>           

   <center>
       <br />
       <br />
       <asp:Button ID="btnpblishrslt" runat="server" Text="Check Your result" BackColor="#8D0D64" BorderColor="#8D0D64" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" Width="204px" CssClass="auto-style4" OnClick="btnpblishrslt_Click" Visible="False" />
       <br />
       <br />
       <asp:Label ID="lblrslt" runat="server"></asp:Label>
    </center>

    <br />

<asp:Button ID="Btnrefresh" runat="server" Text="" OnClick="Btnrefresh_Click" Visible="False" />      
        
 <p style="font-family:'Times New Roman',sans-serif,'Agency FB';margin-top:7%;font-size:large"><span style="color:red;text-decoration:underline;font-size:20px">Note:</span>
<br />Participants can upload their talent upto 07th August, 2016.After that, Your result will be Published on the website,Very shortly.
<br />File size should be  maximum of 4Mb. 

 </p>
   
</asp:Content>

