<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageJury.aspx.cs" Inherits="Admin_ManageJury" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {}
        .auto-style3 {
            width: 193px;
        }
        .auto-style5 {
            width: 204px;
        }
        .auto-style8 {
            width: 193px;
            height: 26px;
        }
        .auto-style11 {
            width: 204px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {}
        .auto-style14 {
            width: 209px;
            height: 26px;
        }
        .auto-style15 {
            width: 209px;
        }
        .auto-style16 {
            width: 151px;
            height: 26px;
        }
        .auto-style17 {
            width: 151px;
        }
        .auto-style18 {
            width: 188px;
            height: 26px;
        }
        .auto-style19 {
            width: 188px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center;color:black;font-size:45px;margin-top:10px;font-family:'Microsoft Sans Serif','Times New Roman',sans-serif;font-weight:bold">Management Of Jurys</h1>

 <h3 style="text-align:center;font-family:'Times New Roman';font-size:35px">Jury Details</h3>

    <fieldset>
        <legend style="color:blue;font-family:'Agency FB';font-size:20px">Jury Addition</legend>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Lable1" runat="server" Text="Name:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtName" runat="server" Font-Bold="True" Font-Names="Arial" Width="210px" Height="18px"></asp:TextBox></td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="namval" runat="server" ControlToValidate="txtName" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Text="Email:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Bold="True" Font-Names="Arial" Width="210px" Height="18px"></asp:TextBox></td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Id Plz." Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="jury"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label3" runat="server" Text="Juryid:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblJuryid" runat="server" Font-Bold="True" Font-Names="Arial" Width="210px" Height="18px"></asp:TextBox></td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lblJuryid" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Text="Mobile:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="lblMobile" runat="server" Font-Bold="True" Font-Names="Arial" Width="210px" Height="18px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="lblMobile" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="lblMobile" ErrorMessage="Mobile" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="jury"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Specialization:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style13" Height="26px" Width="213px">
                        <asp:ListItem Value="">None</asp:ListItem>
                        <asp:ListItem>Arts &amp; Cultural</asp:ListItem>
                        <asp:ListItem>Cultural</asp:ListItem>
                        <asp:ListItem>Programming</asp:ListItem>
                        <asp:ListItem>Quiz</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Text="Password:" Font-Bold="True" Font-Names="Arial"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="lblPassword" runat="server" TextMode="Password" Font-Bold="True" Font-Names="Arial" Width="210px" Height="18px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lblPassword" ErrorMessage="Required" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" Font-Bold="True" ValidationGroup="jury">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                   <center> <asp:Button ID="btnAddjury" runat="server" Text="Add Jury" BackColor="#007ACC" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" ForeColor="Black" Height="30px" Width="164px" OnClick="btnAddjury_Click" ValidationGroup="jury" />
                       <br />
                       <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="Segoe UI Semibold" ForeColor="#FF3300" Font-Size="Large"></asp:Label>
                </td></center>
            </tr>
        </table>



    </fieldset>
   
    
    
    
     <div style="overflow-x:scroll;overflow-y:scroll;margin-top:6%;margin-left:1%;width:auto"  >
       
         <asp:GridView ID="juryview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Juryid" DataSourceID="SqlDataSource_jury" Font-Names="Verdana" GridLines="Vertical" OnRowUpdating="juryview_RowUpdating1" Width="100%">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
                 <asp:CommandField CausesValidation="False" ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="Command">
                 <ControlStyle Font-Size="Medium" ForeColor="#892268" />
                 <ItemStyle Font-Names="Arial" />
                 </asp:CommandField>
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="Juryid" HeaderText="Juryid" ReadOnly="True" SortExpression="Juryid" >
                 <ControlStyle Width="80px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" >
                 <ControlStyle Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" >
                 <ControlStyle Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" >
                 <ControlStyle Width="70px" />
                 </asp:BoundField>
                 <asp:ImageField DataImageUrlField="Display" HeaderText="Display" ReadOnly="True">
                     <ControlStyle Height="180px" Width="180px" />
                 </asp:ImageField>
             </Columns>
             <EditRowStyle Font-Names="Arial" Font-Size="Medium" ForeColor="Black" Width="100px" />
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Medium" ForeColor="White" Height="70px" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />


         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource_jury" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TalentHuntConnectionString30316322 %>" DeleteCommand="DELETE FROM [Jury] WHERE [Juryid] = @original_Juryid AND [Name] = @original_Name AND [Email] = @original_Email AND [Mobile] = @original_Mobile AND [Specialization] = @original_Specialization AND [Password] = @original_Password AND [Display] = @original_Display" InsertCommand="INSERT INTO [Jury] ([Name], [Email], [Juryid], [Mobile], [Specialization], [Password], [Display]) VALUES (@Name, @Email, @Juryid, @Mobile, @Specialization, @Password, @Display)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [Email], [Juryid], [Mobile], [Specialization], [Password], [Display] FROM [Jury]" UpdateCommand="UPDATE [Jury] SET [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile, [Specialization] = @Specialization, [Password] = @Password WHERE [Juryid] = @original_Juryid AND [Name] = @original_Name AND [Email] = @original_Email AND [Mobile] = @original_Mobile AND [Specialization] = @original_Specialization AND [Password] = @original_Password AND [Display] = @original_Display">
             <DeleteParameters>
                 <asp:Parameter Name="original_Juryid" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Email" Type="String" />
                 <asp:Parameter Name="original_Mobile" Type="String" />
                 <asp:Parameter Name="original_Specialization" Type="String" />
                 <asp:Parameter Name="original_Password" Type="String" />
                 <asp:Parameter Name="original_Display" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter Name="Juryid" Type="String" />
                 <asp:Parameter Name="Mobile" Type="String" />
                 <asp:Parameter Name="Specialization" Type="String" />
                 <asp:Parameter Name="Password" Type="String" />
                 <asp:Parameter Name="Display" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter Name="Mobile" Type="String" />
                 <asp:Parameter Name="Specialization" Type="String" />
                 <asp:Parameter Name="Password" Type="String" />
                 <asp:Parameter Name="Display" Type="String" />
                 <asp:Parameter Name="original_Juryid" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Email" Type="String" />
                 <asp:Parameter Name="original_Mobile" Type="String" />
                 <asp:Parameter Name="original_Specialization" Type="String" />
                 <asp:Parameter Name="original_Password" Type="String" />
                 <asp:Parameter Name="original_Display" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>

    </div>

    
</asp:Content>

