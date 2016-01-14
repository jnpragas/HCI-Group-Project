<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorViewStudent.aspx.cs" Inherits="Implementation.InstructorViewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 463px;
        }
        .auto-style2 {
            color: #CC3300;
            text-decoration: underline;
            font-size: x-large;
            text-align: left;
            height: 34px;
        }
        .auto-style5 {
            text-align: right;
            height: 34px;
        }
        .auto-style6 {
            width: 649px;
            text-align: right;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td  colspan="2" style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server" style="text-align: center" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/InstructorHome.aspx" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Student Details</td>
                <td class="auto-style5">
                &nbsp;&nbsp;
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/InstructorViewClass.aspx" style="text-align: left" Width="100px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="AccountID" DataSourceID="SqlDataSource1" Height="50px" Width="457px">
                        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <Fields>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name:" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name:" SortExpression="LastName" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone:" SortExpression="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email:" SortExpression="Email" />
                        </Fields>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">This student is currently registered in the following courses:</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RegisteredID" DataSourceID="SqlDataSource2" style="text-align: left" Width="453px">
                        <Columns>
                            <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
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
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td  colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" DeleteCommand="DELETE FROM [Accounts] WHERE [AccountID] = @AccountID" InsertCommand="INSERT INTO [Accounts] ([UserName], [FirstName], [LastName], [Phone], [Email], [Occupation]) VALUES (@UserName, @FirstName, @LastName, @Phone, @Email, @Occupation)" SelectCommand="SELECT * FROM [Accounts] WHERE ([AccountID] = @AccountID)" UpdateCommand="UPDATE [Accounts] SET [UserName] = @UserName, [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Email] = @Email, [Occupation] = @Occupation WHERE [AccountID] = @AccountID">
            <DeleteParameters>
                <asp:Parameter Name="AccountID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Occupation" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="AccountID" SessionField="StudentID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Occupation" Type="String" />
                <asp:Parameter Name="AccountID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" SelectCommand="SELECT * FROM [AddClasses] WHERE ([AccountID] = @AccountID)">
            <SelectParameters>
                <asp:SessionParameter Name="AccountID" SessionField="StudentID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
