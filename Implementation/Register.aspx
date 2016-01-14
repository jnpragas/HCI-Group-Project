<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Implementation.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 30px;
            width: 392px;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #CC3300;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style4 {
            color: #000000;
        }
        .auto-style5 {
            color: #CC3300;
        }
        .auto-style6 {
            color: #CC3300;
        }
        .auto-style7 {
            font-size: xx-large;
            color: #CC3300;
            text-decoration: underline;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style2">
            <tr>
                <td  colspan="2" class="auto-style7">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/Login.aspx" Width="300px" />
                </td>
            </tr>
            <tr>
                <td  colspan="2" class="auto-style7">Register Account</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">Enter your details below to register for an account.</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">User Name:</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Must enter a User Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">First Name:</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Must enter your First Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Must enter your Last Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Occupation:</td>
                <td>
                    <asp:DropDownList ID="ddlOccupation" runat="server">
                        <asp:ListItem Enabled="False" Selected="True">(Select one)</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Instructor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
                </td>
            </tr>
            <tr>
                <td  colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" SelectCommand="SELECT * FROM [AccountStudents]"></asp:SqlDataSource>
    </form>
</body>
</html>