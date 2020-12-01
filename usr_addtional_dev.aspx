<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usr_addtional_dev.aspx.cs" Inherits="usr_addtional_dev" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .control-fluid, .container-fluid {
            padding-right: 15px;
            padding-left: 15px;
        }
        .control-content .control-section{
            border-width: 0px !important;
        }
        
        .control-section .control-wrapper {
            width: 80%;
            margin: 0 auto;
            min-width: 185px;
        }

        .e-bigger .control-section .control-wrapper {
            width: 100%;
        }

        .e-multi-select-wrapper .e-chips {
            opacity: 0.9;
        }

            .e-multi-select-wrapper .e-chips:hover {
                opacity: 1;
            }

            .e-multi-select-wrapper .e-chips .e-chips-close.e-icon::before,
            .e-multi-select-wrapper .e-chips .e-chipcontent,
            .e-multi-select-wrapper .e-chips .e-chipcontent:hover {
                color: #ffffff;
            }

        .e-chips.chocolate,
        .e-chips.chocolate:hover {
            background-color: #75523C;
        }

        .e-chips.darkorange,
        .e-chips.darkorange:hover {
            background-color: #FF843D;
        }

        .e-chips.darkred,
        .e-chips.darkred:hover {
            background-color: #CA3832;
        }

        .e-chips.fuchsia,
        .e-chips.fuchsia:hover {
            background-color: #D44FA3;
        }

        .e-chips.cadetblue,
        .e-chips.cadetblue:hover {
            background-color: #3B8289;
        }

        .e-chips.hotpink,
        .e-chips.hotpink:hover {
            background-color: #F23F82;
        }

        .e-chips.indigo,
        .e-chips.indigo:hover {
            background-color: #2F5D81;
        }

        .e-chips.limegreen,
        .e-chips.limegreen:hover {
            background-color: #4CD242;
        }

        .e-chips.orangered,
        .e-chips.orangered:hover {
            background-color: #FE2A00;
        }

        .e-chips.tomato,
        .e-chips.tomato:hover {
            background-color: #FF745C;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 266px;
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style4 {
            height: 35px;
        }
        .auto-style5 {
            width: 234px;
            height: 35px;
        }
        .auto-style6 {
            width: 266px;
            height: 35px;
        }
        .auto-style7 {
            width: 203px;
        }
        .auto-style8 {
            width: 203px;
            height: 35px;
        }
        .auto-style9 {
            margin-left: 29px;
        }
        .auto-style10 {
            height: 3px;
        }
        .auto-style11 {
            width: 234px;
            height: 3px;
        }
        .auto-style12 {
            width: 266px;
            height: 3px;
        }
        .auto-style13 {
            width: 203px;
            height: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6">Program Name</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6">Date</td>
                <td class="auto-style8">
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6">Start Time</td>
                <td class="auto-style8">
                <asp:TextBox ID="txtstime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">End Time</td>
                <td class="auto-style8">
                <asp:TextBox ID="txtetime" runat="server" TextMode="Time"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12">Devices</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="dd_dev" runat="server" DataSourceID="SqlDataSource1" DataTextField="device" DataValueField="device">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KJCvenueConnectionString %>" SelectCommand="SELECT [device] FROM [product_table]"></asp:SqlDataSource>
                </td>
                <td class="auto-style10">Quantity<asp:DropDownList ID="dd_qn" runat="server" CssClass="auto-style9" Height="16px" Width="48px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Request" OnClick="Button1_Click" Width="98px" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>


        </table>
    </form>
</body>
</html>
