<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admndlt_devices.aspx.cs" Inherits="admindelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 92px;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            width: 92px;
            height: 21px;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            width: 92px;
            height: 22px;
        }
        .style7
        {
            width: 37px;
            height: 21px;
        }
        .style8
        {
            width: 37px;
        }
        .style9
        {
            width: 37px;
            height: 22px;
        }
        .style10
        {
            height: 21px;
            width: 376px;
        }
        .style11
        {
            width: 376px;
        }
        .style12
        {
            height: 22px;
            width: 376px;
        }
        .auto-style1 {
            height: 36px;
            width: 376px;
        }
        .auto-style2 {
            width: 92px;
            height: 36px;
        }
        .auto-style3 {
            width: 41px;
            height: 36px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            height: 35px;
            width: 376px;
        }
        .auto-style6 {
            width: 92px;
            height: 35px;
        }
        .auto-style7 {
            width: 41px;
            height: 35px;
        }
        .auto-style8 {
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <table class="style1" cellng="35pt">
        <tr>
            <td class="auto-style1">
            </td>
            <td class="auto-style2">
                Block</td>
            <td class="auto-style3">
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
            </td>
            <td class="auto-style4">
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                Venue</td>
            <td class="auto-style7">
                </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style8">
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
            </td>
            <td class="auto-style6">
                Device type</td>
            <td class="auto-style7">
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
            </td>
            <td class="auto-style8">
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                Compalint</td>
            <td class="auto-style7">
                </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style8">
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btndlt" runat="server" Text="Delete" Width="91px" />
            </td>
            <td class="auto-style8">
                </td>
            <td class="auto-style8">
                </td>
        </tr>
    </table>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
