<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAddClass.aspx.cs" Inherits="Implementation.StudentAddClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 412px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style9 {
            width: 261px;
            text-align: right;
            height: 30px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
        }
        .auto-style12 {
            text-align: left;
            width: 262px;
        }
        .auto-style13 {
            width: 261px;
            text-align: right;
            height: 26px;
        }
        .auto-style14 {
            text-align: center;
            height: 30px;
            font-size: xx-large;
            text-decoration: underline;
            color: #CC3300;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            width: 261px;
        }
        .auto-style22 {
            width: 262px;
        }
        .auto-style23 {
            text-align: left;
            width: 261px;
        }
        .auto-style25 {
            text-align: left;
            height: 26px;
        }
        .auto-style26 {
            text-align: left;
            width: 289px;
        }
        .auto-style27 {
            height: 30px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style5">
    
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style14" colspan="3">
    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/StudentHome.aspx" Width="300px" />
    
                    </td>
            </tr>
            <tr>
                <td style="color: #CC3300; font-size: xx-large; text-decoration: underline; text-align: left" class="auto-style18" colspan="2" >
    
                    Add Classes</td>
                <td class="auto-style22" style="text-align: right" >
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                    </td>
            </tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/StudentHome.aspx" style="text-align: left" Width="100px" />
                </tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    &nbsp;</tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    Select the courses you&#39;ve completed and the grade you achieved. Otherwise select a course you are going to take and select Not Available for grades.</tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    &nbsp;</tr>
            <tr>
                <td class="auto-style9">Course Name:</td>
                <td class="auto-style27" colspan="2">
                    <asp:DropDownList ID="ddlCourseName" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Grade:</td>
                <td class="auto-style25" colspan="2">
                    <asp:DropDownList ID="ddlGrade" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem Value="B"></asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Button ID="btnAddClass" runat="server" OnClick="btnAddClass_Click" Text="Add Class" Width="100px" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td style="text-align: left" class="auto-style22">
                &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="2">&nbsp;</td>
                <td style="text-align: left" class="auto-style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" />
                </td>
            </tr>
        </table>
    
        <br />
        </div>
    
    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" SelectCommand="SELECT * FROM [ListOfCourses]"></asp:SqlDataSource>
    </form>
</body>
</html>
