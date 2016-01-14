<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Implementation.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: xx-large;
            color: #CC3300;
            text-align: center;
        }
        .auto-style4 {
            width: 159px;
            height: 23px;
        }
        .auto-style5 {
            width: 160px;
            height: 23px;
            text-align: left;
        }
        .auto-style6 {
            height: 23px;
            width: 160px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style9 {
            width: 481px;
        }
        .auto-style11 {
            width: 160px;
            text-align: left;
        }
        .auto-style12 {
            width: 160px;
            text-align: left;
        }
        .auto-style13 {
            text-align: center;
            height: 30px;
        }
        .auto-style14 {
            width: 160px;
            text-align: left;
            height: 30px;
        }
        .auto-style15 {
            text-decoration: underline;
            font-size: xx-large;
            color: #CC3300;
            text-align: center;
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style7">
    
        <table align="center" class="auto-style9">
            <tr>
                <td class="auto-style3" colspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="3">
                    Login</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    Welcome to CougarAdvisor! Please login into your account or register for one to start managing your courses.</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right" >
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtUserName" runat="server" Width="151px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="lblError" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" PostBackUrl="~/Register.aspx" Width="70px" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" style="text-align: center" />
                </td>
            </tr>
        </table>
    
        </div>
    
    </div>
    </form>
</body>
</html>
