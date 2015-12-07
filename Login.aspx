<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="styles/layout.css">
	<link rel="stylesheet" href="styles/menu.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <style type="text/css">
	#horizontalmenu ul {
padding:1; margin:1; list-style:none;
}
#horizontalmenu li {
float:left; position:relative; padding-right:100; display:block;

}
#horizontalmenu li ul {
    display:none;
position:absolute;
}
#horizontalmenu li:hover ul{
    display:block;
   height:auto; width:8em; 
}
#horizontalmenu li ul li{
    clear:both;
border-style:none;}
#h2{background-color:#09F;
color:#FFF;
padding-bottom:20px
margin:2px;
float:right;
}
.admis{background:#fff;
color:#fff;
-moz-box-shadow:0 0 8px #fff;
-webkit-box-shadow:0 0 8px #fff;
box-shadow:0 0 8px #09F;
text-align:center;}
.admis a:hover{color:#0C6;}

#menu1{
width:960px;
height:35px;
font-size:1.3em;
font-family:"Times New Roman", Times, serif;
margin-bottom:50px;
text-align:center;}
#menu1 ul{height:auto;
padding:8px 0px;
margin:0px;}
#menu1 li{display:inline;
padding:15px;

}
#menu1 a{text-decoration:underline;
color:#000;
padding:8px;color:#CCC;}
#menu1 a:hover{color:#FFF;

height:30px;}
input{[type="button"]};
background:#09F;
color:#fff;
font-size:1em;
width:125px;

margin-left:20px;}
input:hover{[type="button"]};
background:#C00;
color:#fff;}
.admis{background:#fff;
color:#fff;
-moz-box-shadow:0 0 8px #fff;
-webkit-box-shadow:0 0 8px #fff;
box-shadow:0 0 8px #09F;
text-align:center;}
.admis a:hover{color:#0C6;}
	
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 411px;
            text-align: right;
        }
        .style3
        {
            width: 289px;
        }
        .style4
        {
            color: #FF0000;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="style1">
        <tr>
            <td class="style2">
                Login Here&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                 </td>
            <td class="style3">
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New User?&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register Here</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                UserName:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style4" 
                    ErrorMessage="Please Enter UserName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" CssClass="style4" 
                    ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Select User Type:</td>
            <td class="style3">
                <asp:DropDownList 
        ID="DropDownList1" runat="server" Width="200px">
        <asp:ListItem Value="1">Administrator</asp:ListItem>
        <asp:ListItem Value="2">Teacher</asp:ListItem>
        <asp:ListItem Value="3">Student</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" CssClass="style4" 
                    ErrorMessage="Select User Type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
&nbsp;<div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
	
  <div id="footer">
   <h2>DE NOBILI SCHOOL</h2><br>
   
   <div id="menu1">
  <ul style="color:#fff";>
<li class="current_page"><a href="index.html" target="_self">Home</a></li> |
<li><a href="about us.aspx" target="_self">About Us</a></li>|

 <li><a href="#" target="_self">Academics</a></li>
|
<li><a href="#" target="_self">Fees</a></li>|
 <li><a href="#"target="_self">Parents Zone</a></li> 


 

</ul>

</div>

   
  <p style="color:#FFF; font-family:Arial, Helvetica, sans-serif;" align="center"> Address :&nbsp;&nbsp;Suri,Birbhum,
    West Bengal &nbsp;&nbsp;|
    &nbsp;PIN No :731101 &nbsp;&nbsp;|
      &nbsp;Contact No : 03462-234101&nbsp;&nbsp;|
   &nbsp;E-Mail : Nobilians@gmail.com &nbsp;&nbsp;|
 </p>
   
   
  </div>
</div>

<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left" align="center">
    Copyright &copy; www.nobili.org &nbsp;&nbsp;| All Rights Reserved &nbsp;&nbsp;| BIET,CSE Group-IV </p>
     
    <br class="clear" />
  </div>
</div>
</body>
</html>
