<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorViewClass.aspx.cs" Inherits="Implementation.InstructorViewClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 570px;
        }
        .auto-style2 {
            width: 284px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 494px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/InstructorHome.aspx" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCourseName" runat="server" style="color: #CC3300; text-decoration: underline; font-size: x-large" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
                &nbsp;&nbsp;
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/InstructorHome.aspx" style="text-align: left" Width="100px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    The students registered in this class are shown below.</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="AccountID" DataSourceID="SqlDataSource2" style="text-align: left" EmptyDataText="There are no students taking this class." Width="560px" >
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:ImageButton ID="Button1" runat="server" CommandName="ViewStudent" Text="View" CommandArgument='<%# Eval("AccountID") %>' Height="25px" ImageUrl="~/Images/view.png" Width="25px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" SelectCommand="SELECT Accounts.AccountID, Accounts.FirstName, Accounts.LastName, Accounts.Occupation, AddClasses.CourseName FROM Accounts INNER JOIN AddClasses ON Accounts.AccountID = AddClasses.AccountID AND Accounts.AccountID = AddClasses.AccountID WHERE (AddClasses.CourseName = @CourseName) AND (Accounts.Occupation = 'Student')">
                        <SelectParameters>
                            <asp:SessionParameter Name="CourseName" SessionField="CourseName" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>