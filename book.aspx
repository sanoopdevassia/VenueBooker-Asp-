<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 447px;
        }
        .auto-style2 {
            width: 269px;
        }
        .auto-style3 {
            width: 235px;
        }
        .auto-style4 {
            width: 447px;
            height: 35px;
        }
        .auto-style5 {
            width: 269px;
            height: 35px;
        }
        .auto-style6 {
            width: 235px;
            height: 35px;
        }
        .auto-style7 {
            height: 35px;
            width: 222px;
        }
        .auto-style24 {
            width: 222px;
        }
        .auto-style25 {
            width: 447px;
            height: 36px;
        }
        .auto-style26 {
            width: 269px;
            height: 36px;
        }
        .auto-style27 {
            width: 235px;
            height: 36px;
        }
        .auto-style28 {
            height: 36px;
            width: 222px;
        }
        .auto-style29 {
            width: 447px;
            height: 22px;
        }
        .auto-style30 {
            width: 269px;
            height: 22px;
        }
        .auto-style31 {
            width: 235px;
            height: 22px;
        }
        .auto-style32 {
            width: 222px;
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="style1">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                </td>
            <td class="auto-style30">
                </td>
            <td class="auto-style31">
                </td>
            <td class="auto-style32">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Register Number</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_reg" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_reg" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style25">
                </td>
            <td class="auto-style26">
                Date</td>
            <td class="auto-style27">
                <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_date" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style28">
                </td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style26">
                Number of Participants</td>
            <td class="auto-style27">
                <asp:TextBox ID="txt_no" runat="server" OnTextChanged="txt_no_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_no" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style5">
                Start
                Time</td>
            <td class="auto-style27">
                <asp:TextBox ID="txt_time" runat="server" TextMode="Time"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_time" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="auto-style5">
                End Time</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_endtime" runat="server" TextMode="Time"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_endtime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Block</td>
            <td class="auto-style6">
                <asp:DropDownList ID="dd_blck" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="blockname">
                    <asp:ListItem>----Select-----</asp:ListItem>
                    <asp:ListItem>UG</asp:ListItem>
                    <asp:ListItem>PG</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KJCvenueConnectionString %>" SelectCommand="SELECT [blockname] FROM [block_table]"></asp:SqlDataSource>
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Venue</td>
            <td class="auto-style6">
                <asp:DropDownList ID="dd_venue" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Event Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_evnt" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_evnt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Department </td>
            <td class="auto-style6">
                <asp:DropDownList ID="dd_dep" runat="server">
                    <asp:ListItem>&lt;---Select-----&gt;</asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>Psycology</asp:ListItem>
                    <asp:ListItem>Bio Technology</asp:ListItem>
                    <asp:ListItem>MCom</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem>MSW</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                Phone</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_phn" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter phone number" ForeColor="Red" ControlToValidate="txt_phn" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
                
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
                Cordinator Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_cor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_cor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btb_sub" runat="server" Text="Submit" OnClick="Button1_Click" Width="66px" />
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">
                </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
