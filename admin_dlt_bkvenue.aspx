<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_dlt_bkvenue.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 222px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 331px;
        }
        .auto-style5 {
            width: 331px;
            height: 178px;
        }
        .auto-style6 {
            height: 178px;
        }
        .auto-style9 {
            height: 35px;
            width: 400px;
        }
        .auto-style10 {
            height: 35px;
        }
        .auto-style11 {
            width: 400px;
        }
        .auto-style12 {
            height: 35px;
            width: 72px;
        }
        .auto-style13 {
            width: 72px;
        }
        .auto-style14 {
            height: 35px;
            width: 201px;
        }
        .auto-style15 {
            width: 201px;
        }
        .auto-style16 {
            height: 35px;
            width: 213px;
        }
        .auto-style17 {
            width: 213px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style18" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="193px" HorizontalAlign="Left" Width="579px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="bookid" HeaderText="ID" SortExpression="bookid" />
                            <asp:BoundField DataField="date" HeaderText="Date and Time" SortExpression="date" />
                            <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
                            <asp:BoundField DataField="evnt_name" HeaderText="Event Name" SortExpression="evnt_name" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KJCvenueConnectionString %>" SelectCommand="SELECT [bookid], [date], [department], [evnt_name] FROM [book_table]"></asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Enter ID for details</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtid" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                            <asp:Button ID="Button3" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="23px" OnClick="Button3_Click" Text="Search" Width="81px" />
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Register Number</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtreg" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Department</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtdep" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                    <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Block</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtblck" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                    <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Venue</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtven" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                        <td class="auto-style10">
                        </td>
                    <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Coordiantor Name</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtcorname" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                    <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style9">
                            </td>
                        <td class="auto-style14">
                            Coordinator Number</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtnum" runat="server" Width="201px" BorderColor="#003399" BorderStyle="Solid"></asp:TextBox>
                        </td>
                        <td class="auto-style12">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                        <td class="auto-style10">
                            </td>
                    <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                        <td class="auto-style11">
                            &nbsp;</td>
                        <td class="auto-style15">
                            &nbsp;</td>
                        <td class="auto-style17">
                            <asp:Button ID="Button1" runat="server" BackColor="#003399" BorderStyle="Solid" ForeColor="White" Height="26px" OnClick="Button1_Click" Text="Delete" Width="78px" />
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
    
    
    </body>
</html>
