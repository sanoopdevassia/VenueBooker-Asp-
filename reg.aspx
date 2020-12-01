<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 459px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 459px;
            height: 34px;
        }
        .auto-style12 {
            height: 34px;
        }
        .auto-style14 {
            height: 35px;
            width: 193px;
        }
        .auto-style15 {
            height: 34px;
            width: 193px;
        }
        .auto-style18 {
            height: 35px;
            width: 297px;
        }
        .auto-style19 {
            height: 34px;
            width: 297px;
        }
        .auto-style20 {
            height: 35px;
            width: 297px;
            text-align: center;
        }
            .example_b {
color: #fff !important;
text-transform: uppercase;
text-decoration: none;
background: #60a3bc;
padding: 20px;
border-radius: 50px;
display: inline-block;
border: none;
transition: all 0.4s ease 0s;
}
                       .example_b:hover {
text-shadow: 0px 0px 6px rgba(255, 255, 255, 1);
-webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
-moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
transition: all 0.4s ease 0s;
}
        
        .auto-style21 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #fff;
            text-transform: uppercase;
            text-decoration: none;
            background: #60a3bc;
            padding: 20px;
            border-radius: 50px;
            display: inline-block;
            transition: all 0.4s ease 0s;
            height: 11px;
            width: 57px;
        }
        .auto-style22 {
            width: 100px;
            height: 51px;
        }
        .auto-style23 {
            height: 35px;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style23" colspan="2"><strong>
                    <asp:Label ID="Label1" runat="server" Text="REGISTRATION "></asp:Label>
                    </strong></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Name </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Register Number</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtreg" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Gender</td>
                <td class="auto-style14">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="female" />
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Course</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="dd_course" runat="server">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MSc CS</asp:ListItem>
                        <asp:ListItem>MSc Psychology</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style19">Semester</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="dd_sem" runat="server">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Phone</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txt_phn" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Email</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18">Confirm Password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style18"></td>
                <td class="auto-style14">
                    <%--<div class="auto-style22" align="center"><a class="auto-style21" href="add-website-here" target="_blank" rel="nofollow noopener">submit</a></div><div class="button_cont" align="center" onclick="Button1_Click"></div>--%>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
