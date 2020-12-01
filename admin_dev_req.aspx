<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_dev_req.aspx.cs" Inherits="admin_dev_req" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 314px;
        }
        .auto-style3 {
            width: 94px;
        }
        .auto-style12 {
            width: 531px;
        }
        .auto-style13 {
            width: 47px;
        }
        .auto-style14 {
            width: 314px;
            height: 225px;
        }
        .auto-style15 {
            width: 531px;
            height: 225px;
        }
        .auto-style16 {
            width: 47px;
            height: 225px;
        }
        .auto-style17 {
            width: 94px;
            height: 225px;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 203px;
            height: 23px;
        }
        .auto-style21 {
            height: 40px;
        }
        .auto-style22 {
            width: 203px;
            height: 40px;
        }
        .auto-style23 {
            width: 344px;
            height: 40px;
        }
        .auto-style24 {
            height: 34px;
        }
        .auto-style25 {
            width: 203px;
            height: 34px;
        }
        .auto-style26 {
            width: 344px;
            height: 34px;
        }
        .auto-style27 {
            height: 41px;
        }
        .auto-style28 {
            width: 203px;
            height: 41px;
        }
        .auto-style29 {
            width: 344px;
            height: 41px;
        }
        .auto-style30 {
            width: 344px;
            height: 23px;
        }
        .auto-style31 {
            height: 23px;
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
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="190px" onitemcommand="DataGrid1_ItemCommand"  Width="508px" AllowSorting="True" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundColumn DataField="req_id" HeaderText="ID"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="prgm" HeaderText="Program"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="stime" HeaderText="Start Time"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="device" HeaderText="Device" Visible="False"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="quantity" HeaderText="Quantity" Visible="False"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="etime" HeaderText="Endtime" Visible="False"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="reg" HeaderText="Reg No"></asp:BoundColumn>
                                    <asp:ButtonColumn Text="view"></asp:ButtonColumn>
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <ItemStyle BackColor="White" ForeColor="#003399" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" Mode="NumericPages" />
                                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:DataGrid>
                        </td>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
               <table class="auto-style18">
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style19"></td>
                <td class="auto-style30"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23">Booing ID</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23">Register Number</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtreg" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
                <td class="auto-style26">Program Name</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtprg" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23">Date</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtdt" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23">Program Time</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txttim" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29">Required Device</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtdev" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23">Number of devices</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
&nbsp;</td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Button ID="btnacpt" runat="server" Text="Accept" OnClick="Button1_Click" />
                </td>
                <td class="auto-style21">
                    <asp:Button ID="btnreg" runat="server" OnClick="Button2_Click" Text="Reject" />
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>  
            </asp:View>
        </asp:MultiView>
    </div>
       
    </form>
</body>
</html>
