<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editbooking.aspx.cs" Inherits="editbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 38px;
        }
        .auto-style4 {
            margin-bottom: 14px;
        }
        .auto-style5 {
            margin-bottom: 7px;
        }
        .auto-style9 {
            height: 38px;
            width: 221px;
        }
        .auto-style18 {
            width: 219px;
        }
        .auto-style20 {
            height: 38px;
            width: 219px;
        }
        .auto-style21 {
            height: 34px;
        }
        .auto-style24 {
            height: 38px;
            width: 398px;
        }
        .auto-style25 {
            height: 40px;
        }
        .auto-style27 {
            height: 40px;
            width: 221px;
        }
        .auto-style28 {
            height: 40px;
            width: 219px;
        }
        .auto-style31 {
            height: 41px;
            width: 221px;
        }
        .auto-style34 {
            height: 58px;
            width: 398px;
        }
        .auto-style35 {
            height: 58px;
            width: 221px;
        }
        .auto-style36 {
            height: 58px;
            width: 219px;
        }
        .auto-style43 {
            height: 36px;
        }
        .auto-style44 {
            height: 36px;
            width: 398px;
        }
        .auto-style45 {
            height: 36px;
            width: 221px;
        }
        .auto-style46 {
            height: 36px;
            width: 219px;
        }
        .auto-style48 {
            height: 26px;
            width: 398px;
        }
        .auto-style49 {
            height: 26px;
            width: 221px;
        }
        .auto-style50 {
            height: 26px;
            width: 219px;
        }
        .auto-style51 {
            height: 26px;
        }
        .auto-style54 {
            height: 36px;
            width: 486px;
        }
        .auto-style55 {
            height: 26px;
            width: 486px;
        }
        .auto-style57 {
            height: 58px;
            width: 486px;
        }
        .auto-style59 {
            height: 38px;
            width: 486px;
        }
        .auto-style61 {
            height: 58px;
        }
        .auto-style63 {
            height: 50px;
            width: 486px;
        }
        .auto-style64 {
            height: 50px;
            width: 398px;
        }
        .auto-style65 {
            height: 50px;
            width: 219px;
        }
        .auto-style66 {
            height: 50px;
            width: 221px;
        }
        .auto-style67 {
            height: 50px;
        }
        .auto-style68 {
            height: 34px;
            width: 767px;
        }
        .auto-style70 {
            height: 36px;
            width: 767px;
        }
        .auto-style71 {
            height: 26px;
            width: 767px;
        }
        .auto-style73 {
            height: 58px;
            width: 767px;
        }
        .auto-style74 {
            height: 50px;
            width: 767px;
        }
        .auto-style75 {
            height: 38px;
            width: 767px;
        }
        .auto-style78 {
            height: 40px;
            width: 486px;
        }
        .auto-style79 {
            width: 486px;
        }
        .auto-style82 {
            width: 100%;
        }
        .auto-style83 {
            width: 256px;
        }
        .auto-style84 {
            height: 40px;
            width: 398px;
        }
        .auto-style85 {
            width: 398px;
        }
        .auto-style86 {
            height: 40px;
            width: 767px;
        }
        .auto-style87 {
            width: 767px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server" >
            <asp:View ID="View1" runat="server">
                <table class="auto-style82">
                    <tr>
                        <td class="auto-style83">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style83">&nbsp;</td>
                        <td>
                            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="190px" onitemcommand="DataGrid1_ItemCommand"  onselectedindexchanged="DataGrid1_SelectedIndexChanged" Width="508px">
                                <Columns>
                                    <asp:BoundColumn DataField="bookid" HeaderText="ID"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="evnt_name" HeaderText="Event"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="department" HeaderText="Department"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="date" HeaderText="date"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="time" HeaderText="Time"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="no_of_seats" HeaderText="Number of seats"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="coordinator" HeaderText="Coordinator"></asp:BoundColumn>
                                    <asp:ButtonColumn Text="edit"></asp:ButtonColumn>
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <ItemStyle BackColor="White" ForeColor="#003399" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" Mode="NumericPages" />
                                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:DataGrid>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style83">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style83">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="style1">
                    <tr>
                        <td class="auto-style68"></td>
                        <td class="auto-style21" colspan="2" style="font-size: 16px; font-family: 'Myriad Pro'; font-style: italic; font-variant: small-caps; color: #FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Update&nbsp; Details</strong></td>
                        <td class="auto-style21" colspan="2" style="font-size: 16px; font-family: 'Myriad Pro'; font-style: italic; font-variant: small-caps; color: #FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style21"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td class="auto-style86">&nbsp;</td>
                        <td class="auto-style78">&nbsp;</td>
                        <td class="auto-style84">
                            &nbsp;</td>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style25">&nbsp;</td>
                        <td class="auto-style25">&nbsp;</td>
                        <td class="auto-style25">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style70"></td>
                        <td class="auto-style54">Program Name</td>
                        <td class="auto-style44">
                            <asp:TextBox ID="txtprg" runat="server" BorderColor="#000066" BorderStyle="Solid" Height="34px" OnTextChanged="txtprg_TextChanged" Width="201px"></asp:TextBox>
                        </td>
                        <td class="auto-style45">&nbsp;</td>
                        <td class="auto-style46">
                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style43"></td>
                        <td class="auto-style43"></td>
                        <td class="auto-style43"></td>
                    </tr>
                    <tr>
                        <td class="auto-style71"></td>
                        <td class="auto-style55">Date</td>
                        <td class="auto-style48">
                            <asp:TextBox ID="txtdate" runat="server" CssClass="auto-style5" TextMode="Date" Width="201px" BorderStyle="Solid" BorderColor="#000066"></asp:TextBox>
                        </td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style50">
                            &nbsp;</td>
                        <td class="auto-style51"></td>
                        <td class="auto-style51"></td>
                        <td class="auto-style51"></td>
                    </tr>
                    <tr>
                        <td class="auto-style86"></td>
                        <td class="auto-style78">Time</td>
                        <td class="auto-style84">
                            <asp:TextBox ID="txttime0" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style4" TextMode="Time" Width="201px"></asp:TextBox>
                        </td>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style28">
                            &nbsp;</td>
                        <td class="auto-style25"></td>
                        <td class="auto-style25"></td>
                        <td class="auto-style25"></td>
                    </tr>
                    <tr>
                        <td class="auto-style87"></td>
                        <td class="auto-style79">Number of participants</td>
                        <td class="auto-style85">
                            <asp:TextBox ID="txtno" runat="server" BorderColor="#000066" BorderStyle="Solid" Height="35px" Width="201px"></asp:TextBox>
                        </td>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style18">
                            &nbsp;</td>
                        <td></td>
                        <td class="style15"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style87">&nbsp;</td>
                        <td class="auto-style79">Block</td>
                        <td class="auto-style85">
                            <asp:DropDownList ID="dd_block" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="blockname" DataValueField="blockname" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                <asp:ListItem>---Select---</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KJCvenueConnectionString %>" SelectCommand="SELECT [blockname] FROM [block_table]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="style15">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style87">&nbsp;</td>
                        <td class="auto-style79">Venue</td>
                        <td class="auto-style85">
                            <asp:DropDownList ID="DropDownList5" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="style15">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style73"></td>
                        <td class="auto-style57">Department</td>
                        <td class="auto-style34">
                            <asp:TextBox ID="txtdep" runat="server" Height="34px" Width="201px" BorderStyle="Solid" BorderColor="#000066"></asp:TextBox>
                        </td>
                        <td class="auto-style35"></td>
                        <td class="auto-style36">
                            &nbsp;</td>
                        <td class="auto-style61"></td>
                        <td class="auto-style61"></td>
                        <td class="auto-style61"></td>
                    </tr>
                    <tr>
                        <td class="auto-style74"></td>
                        <td class="auto-style63">Coordinator Contact No</td>
                        <td class="auto-style64">
                            <asp:TextBox ID="txtcor" runat="server" Height="34px" Width="201px" BorderStyle="Solid" BorderColor="#000066" OnTextChanged="txtcor_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style66"></td>
                        <td class="auto-style65"></td>
                        <td class="auto-style67"></td>
                        <td class="auto-style67"></td>
                        <td class="auto-style67"></td>
                    </tr>
                    <tr>
                        <td class="auto-style74">&nbsp;</td>
                        <td class="auto-style63">Coordinator Name</td>
                        <td class="auto-style64">
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#000066" BorderStyle="Solid" Width="198px"></asp:TextBox>
                        </td>
                        <td class="auto-style66">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                        <td class="auto-style67">&nbsp;</td>
                        <td class="auto-style67">&nbsp;</td>
                        <td class="auto-style67">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style75"></td>
                        <td class="auto-style59">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Button ID="Button1" runat="server" Text="Update" Width="75px" BorderStyle="Solid" BorderColor="#000066" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style9"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
