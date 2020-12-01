<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admn_issue.aspx.cs" Inherits="admn_issue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 314px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style6 {
            width: 314px;
            height: 40px;
        }
        .auto-style11 {
            height: 28px;
        }
        .auto-style13 {
            width: 314px;
            height: 28px;
        }
        .auto-style14 {
            width: 104px;
        }
        .auto-style15 {
            height: 40px;
            width: 104px;
        }
        .auto-style16 {
            width: 104px;
            height: 28px;
        }
        .auto-style17 {
            width: 191px;
        }
        .auto-style18 {
            height: 40px;
            width: 191px;
        }
        .auto-style19 {
            height: 28px;
            width: 191px;
        }
        .auto-style25 {
            width: 44px;
        }
        .auto-style26 {
            height: 40px;
            width: 44px;
        }
        .auto-style27 {
            width: 44px;
            height: 28px;
        }
        .auto-style29 {
            width: 157px;
        }
        .auto-style30 {
            height: 40px;
            width: 157px;
        }
        .auto-style31 {
            height: 28px;
            width: 157px;
        }
        .auto-style33 {
            width: 126px;
        }
        .auto-style34 {
            height: 40px;
            width: 126px;
        }
        .auto-style35 {
            height: 28px;
            width: 126px;
        }
        .auto-style36 {
            height: 37px;
        }
        .auto-style37 {
            width: 44px;
            height: 37px;
        }
        .auto-style38 {
            width: 314px;
            height: 37px;
        }
        .auto-style39 {
            width: 104px;
            height: 37px;
        }
        .auto-style40 {
            height: 37px;
            width: 191px;
        }
        .auto-style41 {
            height: 37px;
            width: 126px;
        }
        .auto-style42 {
            height: 37px;
            width: 157px;
        }
        .auto-style43 {
            height: 36px;
        }
        .auto-style44 {
            height: 36px;
            width: 44px;
        }
        .auto-style45 {
            width: 314px;
            height: 36px;
        }
        .auto-style46 {
            height: 36px;
            width: 104px;
        }
        .auto-style47 {
            height: 36px;
            width: 191px;
        }
        .auto-style48 {
            height: 36px;
            width: 126px;
        }
        .auto-style49 {
            height: 36px;
            width: 157px;
        }
    </style>
<link rel="stylesheet" href="multi-list.css">

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>STUDENT DETAILS</strong></td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ISSUE DEVICE</strong></td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style26"></td>
                <td class="auto-style6">Enter Register Number</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtreg" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style27"></td>
                <td class="auto-style13">Name</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtnme" runat="server" Width="145px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style35">&nbsp;Devices Took</td>
                <td class="auto-style31">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" Height="69px" Width="115px">
                        <asp:ListItem>Slide Changer</asp:ListItem>
                        <asp:ListItem>HDMI</asp:ListItem>
                        <asp:ListItem>Projerctor </asp:ListItem>
                        <asp:ListItem>Pendrive</asp:ListItem>
                        <asp:ListItem>Remot</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
                <td class="auto-style38">Department</td>
                <td class="auto-style39">
                    <asp:TextBox ID="txtdep" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style40"></td>
                <td class="auto-style41" id="txtdate">Date</td>
                <td class="auto-style42">
                    <asp:TextBox ID="txtdate" runat="server" Width="145px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44"></td>
                <td class="auto-style45">Semester</td>
                <td class="auto-style46">
                    <asp:TextBox ID="txtsem" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style47"></td>
                <td id="txttime" class="auto-style48">Time</td>
                <td class="auto-style49">
                    <asp:TextBox ID="txttim" runat="server" Width="145px" TextMode="Time"></asp:TextBox>
                </td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
                <td class="auto-style38">Phone</td>
                <td class="auto-style39">
                    <asp:TextBox ID="txtphn" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    <asp:Button ID="btnisue" runat="server" Text="Issue" Width="73px" OnClick="btnisue_Click" />
                </td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
