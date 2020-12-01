<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
        height: 57px;
    }
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#container {
    padding-top:25px;
margin-left:500px;

margin-right:500px;
margin-bottom:100px;
        background-color:azure;
    
 
    }

#login {
margin: 50px auto;
width: 300px;
        height: 428px;
    
 
    }
form fieldset input[type="text"], input[type="password"] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #e5e5e5;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #5a5656;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        font-size: 14px;
        outline: none;
        padding: 0px 10px;
        -webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
.facebook-before {
background-color: #0064ab;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px;
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}
.facebook {
background-color: #0079ce;
border: none;
border-radius: 0px 3px 3px 0px;
-moz-border-radius: 0px 3px 3px 0px;
-webkit-border-radius: 0px 3px 3px 0px;
color: #f4f4f4;
cursor: pointer;
height: 50px;
text-transform: uppercase;
width: 250px;
}
.twitter-before {
background-color: #189bcb;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px;
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}
.twitter {
background-color: #1bb2e9;
border: none;
border-radius: 0px 3px 3px 0px;
-moz-border-radius: 0px 3px 3px 0px;
-webkit-border-radius: 0px 3px 3px 0px;
color: #f4f4f4;
cursor: pointer;
height: 50px;
text-transform: uppercase;
width: 250px;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
   
     

    <li style="background-image: url(images/img_bg_1.jpg); height:500px; width:1400px;">
        <div id="container">
    <div id="login">
        	
    <form id="form1" runat="server">
<h1>
    <asp:Image ID="Image1" runat="server" Height="65px" 
        ImageUrl="~/lgo.png" Width="300px" />
    </h1>
<fieldset>
<p>
    <asp:TextBox ID="TextBox1" runat="server" Height="62px" Width="300px"></asp:TextBox>
    </p>
<p>
    <asp:TextBox ID="TextBox2" runat="server" Height="63px" Width="300px" TextMode="Password"></asp:TextBox>
    </p>
    <p><a href="#">Forgot Password?</a></p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </p>
</fieldset>
    </form>
               
</div> <!-- end login -->
        </div>
     </li>
    </aside>
</asp:Content>


