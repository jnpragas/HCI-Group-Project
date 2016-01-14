<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorEditProfile.aspx.cs" Inherits="Implementation.InstructorEditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #CC3300;
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
            text-align: left;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            height: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style3">
        <table align="center" class="auto-style1">
            <tr>
                <td style="text-align: center" class="auto-style5" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/InstructorHome.aspx" Width="300px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
            <span class="auto-style2">Edit Profile</span></td>
                <td style="text-align: right">
                                &nbsp;&nbsp;
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/InstructorHome.aspx" style="text-align: left" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    Click Edit to modify your account details.</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: left" class="auto-style6">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="AccountID" DataSourceID="SqlDataSource1" Height="50px" Width="470px" style="text-align: left">
                        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <Fields>
                            <asp:BoundField DataField="UserName" HeaderText="Username:" SortExpression="UserName" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name:" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name:" SortExpression="LastName" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone:" SortExpression="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email:" SortExpression="Email" />
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Width="100px" />
                                    &nbsp;&nbsp;&nbsp;
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" DeleteCommand="DELETE FROM [Accounts] WHERE [AccountID] = @AccountID" InsertCommand="INSERT INTO [Accounts] ([UserName], [FirstName], [LastName], [Phone], [Email], [Occupation]) VALUES (@UserName, @FirstName, @LastName, @Phone, @Email, @Occupation)" SelectCommand="SELECT * FROM [Accounts] WHERE ([AccountID] = @AccountID)" UpdateCommand="UPDATE [Accounts] SET [UserName] = @UserName, [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Email] = @Email WHERE [AccountID] = @AccountID">
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
                            <asp:SessionParameter Name="AccountID" SessionField="AccountID" Type="Int32" />
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
    
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>

