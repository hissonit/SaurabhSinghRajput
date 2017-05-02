<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Admin_ManageUsers" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            margin-top: 5px;
        }
    </style>
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center;color:black;font-size:45px;margin-top:10px;font-family:'Microsoft Sans Serif','Times New Roman',sans-serif;font-weight:bold">Management Of Users</h1>

 <h3 style="text-align:center;font-family:'Times New Roman';font-size:35px">Pending Users Details</h3>


    <div style="overflow-x:scroll;overflow-y:scroll;margin-top:6%;"  >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" BorderStyle="None" EnableTheming="False" GridLines="Vertical" HorizontalAlign="Center" Width="98%" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" ForeColor="Green">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="Select" >
                    <ItemTemplate>
                        <asp:CheckBox ID="selectuser" runat="server"  />
                  
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Userid" HeaderText="Userid" ReadOnly="True" SortExpression="Userid" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:ImageField DataImageUrlField="Display" HeaderText="Display" ControlStyle-ForeColor="Blue" ControlStyle-CssClass="center">
<ControlStyle  ForeColor="Blue" Height="120px" Width="120px"></ControlStyle>
                    <ItemStyle Height="120px" Width="120px" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" Height="10px" />
            <HeaderStyle BackColor="#000066" Font-Bold="True" ForeColor="White"  Height="70px"  />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />



        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TalentHuntConnectionString1 %>" SelectCommand="SELECT [Name], [Email], [Userid], [Mobile], [Course], [Password], [Display] FROM [Users_pending]"></asp:SqlDataSource>


    </div>

    
       <center ><div style="margin-top:1%"> <asp:Button ID="btnApprovw"   class="waves-effect waves-light btn" runat="server" Text="Approved" Font-Names="Segoe UI" BackColor="#8D0D64" CausesValidation="False" Font-Bold="True" ForeColor="White" Height="38px" Width="225px" CssClass="auto-style1" OnClick="btnApprovw_Click" /></div></center>


   <center> <asp:Label ID="l0" runat="server" Text="" Font-Bold="True" ForeColor="Red" Font-Names="Verdana"></asp:Label></center>
    













</asp:Content>

