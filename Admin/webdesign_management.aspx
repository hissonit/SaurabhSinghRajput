<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_talent_Management.master" AutoEventWireup="true" CodeFile="webdesign_management.aspx.cs" Inherits="Admin_webdesign_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 style="text-align: center; color: black; font-size: 50px; margin-top: 10px; font-family: 'Microsoft Sans Serif','Times New Roman',sans-serif; font-weight: bold">Management Of Talent</h1>
    <h3 style="text-align: center; font-family: 'Times New Roman'; font-size: 30px">Web Design Talent Management</h3>


    <div style="overflow-x: scroll; overflow-y: scroll;margin-top: 50px">




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" DataSourceID="SqlDataSource_talent" GridLines="Vertical" Width="100%" Height="10px" HorizontalAlign="Center" Font-Bold="False" Font-Names="verdana" Font-Size="Small">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:BoundField DataField="Qno" HeaderText="Qno" SortExpression="Qno" />
                <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Fileurl" HeaderText="Fileurl" SortExpression="Fileurl">
                    <ItemStyle Font-Size="Small" ForeColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Filename" HeaderText="Filename" SortExpression="Filename" />
                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        <asp:HyperLink ID="link" runat="server" Text='<%# Eval("Filename") %>' NavigateUrl='<%# Eval("Fileurl") %>' Font-Size="Medium" download='<%# Eval("Filename") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="cbSelect" runat="server" Font-Bold="True" Font-Size="Large" />
                        <br />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
               <asp:Label ID="Label1" runat="server" forecolor="Red" Text="There is no solution uploaded."></asp:Label>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084"  Font-Bold="True" ForeColor="White" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle"  />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />

        </asp:GridView>



        <asp:SqlDataSource ID="SqlDataSource_talent" runat="server" ConnectionString="<%$ ConnectionStrings:TalentHunt_ConnectionString %>" SelectCommand="SELECT [Userid], [Username], [Qno], [Filename], [Fileurl] FROM [Webdesigntable_pending] ORDER BY [Qno]"></asp:SqlDataSource>



    </div>

    <center><div style="margin-top:30px"><asp:Button ID="btnApproved" runat="server" Text="Approved"   Width="200px" Height="30px" BackColor="#33337f" ForeColor="White" Font-Bold="True" Font-Size="Medium" OnClick="btnApproved_Click" ></asp:Button></div></center>
    <center><asp:Label ID="lblmsg" runat="server" Text="" Font-Bold="True" Font-Names="verdana" ForeColor="Red"></asp:Label></center>



</asp:Content>

