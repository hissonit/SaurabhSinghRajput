<%@ Page Title="" Language="C#" MasterPageFile="~/jury/jury.master" AutoEventWireup="true" CodeFile="jwebdesign.aspx.cs" Inherits="jury_jwebdesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            border-radius:5px;
            margin-top:20px;
            cursor:pointer;

        }
        .auto-style2 {
            display:inline-block;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="text-align: center; color: black; font-size: 50px; margin-top: 10px; font-family: 'Microsoft Sans Serif','Times New Roman',sans-serif; font-weight: bold">Web Design Competition Result Management</h1>

<h3 style="text-align: center; font-family: 'Times New Roman'; font-size: 40px">Judgement Management</h3>

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
</div>
   
     <!--Count Down Timer--> 

    <!--Grid view for result submission by jury-->

        <div style="overflow-x: scroll; overflow-y: scroll; margin-top: 130px">

        <asp:GridView ID="Resultview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" DataSourceID="SqlDataSource_jury_" ForeColor="Black" GridLines="Horizontal" Width="100%" Font-Names="Verdana" Font-Size="Large" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Qno" HeaderText="Qno" SortExpression="Qno">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Solutions">
                    <ItemTemplate>
                        <asp:HyperLink ID="dwnldLink" Text='<%# Eval("Filename") %>' NavigateUrl='<%# Eval("Fileurl") %>' Font-Size="Medium" download='<%# Eval("Filename") %>' runat="server"></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prev. Assigned  Marks">
                    <ItemTemplate>
                        <asp:Label ID="prevmarks" runat="server" Text=<%# Eval(column_name)  %> ></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Result">
                    <ItemTemplate>
                        <asp:DropDownList ID="rsltDrpdwn" runat="server" BackColor="White" Font-Bold="True" Font-Names="Verdana" Width="50px">
                            <asp:ListItem Value="">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="Username" HeaderText="Name" SortExpression="Username">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Names="Segeo UI" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource_jury_" runat="server" ConnectionString="<%$ ConnectionStrings:TalentHunt_ConnectionString %>" SelectCommand="SELECT [Userid], [Username], [Qno], [Filename], [Fileurl], [jsaurabh2794_jury], [sakshirani1413_jury], [stmsaurabh94_jury], [suchikumari22_jury] FROM [Webdesigntable]"></asp:SqlDataSource>
    </div>

    <!--Grid view for result submission by jury-->


   <center><asp:Button ID="btnSubmt"  runat="server" Text="Submit or Update Judgement" BackColor="#6C006C" BorderColor="#6C006C" CssClass="auto-style1" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="White" Height="40px" Width="39%" OnClick="btnSubmt_Click" Visible="False" />
       <br />
       <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label>
       <br />
       <br />
       <asp:Button ID="btnrefresh" runat="server" OnClick="btnrefresh_Click" Visible="False" />
    </center> 

    <p style="font-family:'Times New Roman',sans-serif,'Agency FB';margin-top:7%;font-size:large"><span style="color:red">Note:</span>Update or Submit Judgement button will be active on 07 August,2016.After that, You can submit your Judgement.</p>




























</asp:Content>

