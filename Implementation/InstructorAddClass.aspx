<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorAddClass.aspx.cs" Inherits="Implementation.InstructorAddClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 402px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
            height: 30px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
            height: 30px;
            font-size: xx-large;
            text-decoration: underline;
            color: #CC3300;
        }
        .auto-style15 {
            width: 161px;
            text-align: left;
            height: 30px;
            font-size: xx-large;
            text-decoration: underline;
            color: #CC3300;
        }
        .auto-style17 {
            width: 161px;
            text-align: left;
        }
        .auto-style18 {
            text-align: center;
            height: 34px;
        }
        .auto-style19 {
            height: 34px;
        }
        .auto-style20 {
            text-align: left;
            height: 34px;
        }
        .auto-style21 {
            width: 106px;
            text-align: left;
            height: 30px;
        }
        .auto-style22 {
            width: 106px;
            text-align: left;
        }
        .auto-style23 {
            text-align: center;
            height: 34px;
            width: 106px;
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
    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" Width="300px" PostBackUrl="~/InstructorHome.aspx" />
    
                    </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    Add Classes</td>
                <td style="text-align: right" >
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                    </td>
            </tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/InstructorHome.aspx" style="text-align: left" Width="100px" />
                    </tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    &nbsp;</tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    Select the courses you are teaching below.</tr>
            <tr>
                <td </td class="auto-style10" colspan="3">
                    &nbsp;</tr>
            <tr>
                <td class="auto-style21">Course Name:</td>
                <td class="auto-style9" colspan="2">
                    <asp:DropDownList ID="ddlCourseName" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="btnAddClass" runat="server" OnClick="btnAddClass_Click" Text="Add Class" Width="100px" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style20" colspan="2">&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="3">
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

