<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentViewClass.aspx.cs" Inherits="Implementation.StudentViewClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" PostBackUrl="~/StudentHome.aspx" Width="300px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCourseName" runat="server" style="color: #CC3300; text-decoration: underline; font-size: x-large" Text="Label"></asp:Label>
                </td>
                <td style="text-align: right">
                &nbsp;&nbsp;
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/Images/back.png" PostBackUrl="~/StudentHome.aspx" style="text-align: left" Width="100px" />
                </td>
                <td style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="50px" Width="656px">
                        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <Fields>
                            <asp:BoundField DataField="Description" HeaderText="Description:" SortExpression="Description" />
                            <asp:BoundField DataField="Prequisite" HeaderText="Prequisites:" SortExpression="Prequisite" />
                            <asp:BoundField DataField="Instructor" HeaderText="Instructor:" SortExpression="Instructor" />
                            <asp:BoundField DataField="Office" HeaderText="Office:" SortExpression="Office" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone:" SortExpression="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email:" SortExpression="Email" />
                        </Fields>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" SelectCommand="SELECT * FROM [CourseDetails] WHERE ([CourseName] = @CourseName)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="CourseName" QueryStringField="CourseName" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
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
