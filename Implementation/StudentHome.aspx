<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="Implementation.StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #CC3300;
            text-decoration: underline;
            font-size: xx-large;
            }

        .auto-style3 {            text-align: center;
        }

        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 225px;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            width: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width: 494px" align="center">
                <tr>
                    <td  colspan="2" style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/Images/logo.png" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Home</td>
                    <td style="text-align: right" class="auto-style9">
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="btnAddClass" runat="server" Text="Add Class" Width="100px" PostBackUrl="~/StudentAddClass.aspx" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btbEditProfile" runat="server" Text="Edit Profile" Width="100px" PostBackUrl="~/StudentEditProfile.aspx" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">Your registered classes are shown below:</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No Classes Registered" Width="489px" DataKeyNames="CourseName,RegisteredID" Style="text-align: left" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Drop" Height="25px" ImageUrl="~/Images/trash.png" Width="25px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="Button2" runat="server" CommandName="ViewClass" Text="View" CommandArgument='<%# Eval("CourseName") %>' Height="25px" ImageUrl="~/Images/view.png" Width="25px" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPSC6118ConnectionString %>" DeleteCommand="DELETE FROM [AddClasses] WHERE [RegisteredID] = @RegisteredID" SelectCommand="SELECT * FROM [AddClasses] WHERE ([AccountID] = @AccountID)" InsertCommand="INSERT INTO [AddClasses] ([AccountID], [CourseName], [Grade]) VALUES (@AccountID, @CourseName, @Grade)" UpdateCommand="UPDATE [AddClasses] SET [AccountID] = @AccountID, [CourseName] = @CourseName, [Grade] = @Grade WHERE [RegisteredID] = @RegisteredID">

                            <DeleteParameters>
                                <asp:Parameter Name="RegisteredID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="AccountID" Type="Int32" />
                                <asp:Parameter Name="CourseName" Type="String" />
                                <asp:Parameter Name="Grade" Type="String" />
                            </InsertParameters>

                            <SelectParameters>
                                <asp:SessionParameter Name="AccountID" SessionField="AccountID" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="AccountID" Type="Int32" />
                                <asp:Parameter Name="CourseName" Type="String" />
                                <asp:Parameter Name="Grade" Type="String" />
                                <asp:Parameter Name="RegisteredID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/csuLogo.png" />
                    </td>
                </tr>
                </table>

        </div>
    </form>
</body>
</html>
