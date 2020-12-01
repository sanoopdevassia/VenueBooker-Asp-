<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_additional_devices.aspx.cs" Inherits="admin_additional_devices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 181px;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 134px;
        }
        .auto-style4 {
            width: 22px;
        }
        .auto-style5 {
            width: 115px;
        }
        .auto-style6 {
            width: 152px;
        }
        .auto-style7 {
            width: 148px;
            height: 39px;
        }
        .auto-style8 {
            width: 134px;
            height: 39px;
        }
        .auto-style9 {
            width: 22px;
            height: 39px;
        }
        .auto-style10 {
            width: 115px;
            height: 39px;
        }
        .auto-style11 {
            width: 152px;
            height: 39px;
        }
        .auto-style12 {
            height: 39px;
        }
        .auto-style13 {
            width: 148px;
            height: 40px;
        }
        .auto-style14 {
            width: 134px;
            height: 40px;
        }
        .auto-style15 {
            width: 22px;
            height: 40px;
        }
        .auto-style16 {
            width: 115px;
            height: 40px;
        }
        .auto-style17 {
            width: 152px;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style16">Device</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txttyp" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16">Block</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="blockname" DataValueField="blockname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KJCvenueConnectionString %>" SelectCommand="SELECT [blockname] FROM [block_table]"></asp:SqlDataSource>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">Quantity</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtqnt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" BorderStyle="Inset" Text="Add" Width="66px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
