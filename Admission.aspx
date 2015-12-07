<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admission.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="styles/menu.css" type="text/css">
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
<style type="text/css" media="screen">
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

    #con{width:960px;
         height:auto;
         margin:0 auto;
         padding:2px;
         position:relative;
         background-color: #3399FF;
         margin-top:3px;
         margin-bottom:10px;
         
    }
    p{margin-left:2px;
      color:#fff;
    }
      
    </style>

<script type="text/javascript">
    function MM_swapImgRestore() { //v3.0
        var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
    }
    function MM_preloadImages() { //v3.0
        var d = document; if (d.images) {
            if (!d.MM_p) d.MM_p = new Array();
            var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
        }
    }

    function MM_findObj(n, d) { //v4.01
        var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
            d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
        }
        if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
        for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
        if (!x && d.getElementById) x = d.getElementById(n); return x;
    }

    function MM_swapImage() { //v3.0
        var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
            if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
    }
</script>
</head>
<body onload="MM_preloadImages('images/library.jpg')">

<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1>De Nobili School</h1>
      <p>We Will Open The World Of Knowledge For You!</p>
    </div>
    

    <div id="topnav">
    <div id="cssmenu">
<ul>
   <li><a href="index1.aspx"><span>Home</span></a></li>
    <li><a href="#"><span>About Us</span></a>
    <ul>
      <li><a href="history of the school.aspx"><span>History</span></a>
         <li><a href="affiliation.aspx"><span>Affiliation</span></a>
          <li><a href="infrastructure.aspx"><span>Infrastructure</span></a>
        <li><a href="management.aspx"><span>Management</span></a>
            
         </ul>
    </li>
     
   <li><a href="#"><span>Academics</span></a>
      <ul>
     
      <li><a href="assesment.aspx"><span>Assessment</span></a>
     
      
       
        <li><a href="holy day.aspx"><span>Holidays</span></a>
        
          <li><a href="Time Table.aspx"><span>Time Table</span></a>
             <li><a href="Fees.aspx"><span>Fees</span></a>
             
        <li><a href="#"><span>Uniform</span></a></li>  
          
      
         </ul>
   </li>
   <li><a href="#"><span>Gallery</span></a>
   
   <ul><li><a href="photo slide.aspx"><span>Photo Album</span></a></li>
   <li><a href="school events (2).aspx"><span>School Events </span></a></li>
   </ul>
   </li>
  
    <li class='last'><a href="parent zone.aspx"><span>Parents Zone</span></a></li>
   <li class='last'><a href="#"><span>Contact Us</span></a></li>
</ul>
</div>
    </div>
    
    <br class="clear" />
  </div>
</div>



<div id="con">
    <form id="form1" runat="server">
    <div style="margin-left: 120px">
    
        <br />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <h1 align="center" style="color:#fff;">Admission Form</h1>
        
        <p><strong> Form No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For Class:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="97px">
            <asp:ListItem>KG</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11-Sc</asp:ListItem>
            <asp:ListItem>11-Com</asp:ListItem>
            <asp:ListItem>12-Sc</asp:ListItem>
            <asp:ListItem>12-Com</asp:ListItem>
        </asp:DropDownList>
        <br />
        
        Name:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" style="margin-top: 10px" Width="348px"></asp:TextBox>
        <br />
        <br />
        Father&#39;s Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="344px"></asp:TextBox>
    

        <br />
        <br />
        Mother&#39;s Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="346px"></asp:TextBox>
        <br />
        <br />
        Occupation of Father:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="199px"></asp:TextBox>
        <br />
        <br />
        Ocuupation Of Mother:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="199px"></asp:TextBox>
        <br />
        <br />
        Permanent Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        Present Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Width="350px"></asp:TextBox>
        <br />
        <br />
        Residential Phone No:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" Width="197px"></asp:TextBox>
        <br />
        <br />
       Mobile No(Father):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server" Width="197px"></asp:TextBox>
        <br />
        <br />
        E-Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox11" runat="server" Width="247px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="*write in correct format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Date Of Birth:&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="TextBox12_CalendarExtender" runat="server" 
            Enabled="True" TargetControlID="TextBox12">
        </asp:CalendarExtender>
        <br />
        <br />
        Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow" style="margin-top: 19px">
            <asp:ListItem Selected="True">Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        Blood Group:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        The category to which you belong:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Selected="True">General</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>ST</asp:ListItem>
            <asp:ListItem>OBC</asp:ListItem>
        </asp:RadioButtonList>
        <br />
&nbsp;<br />
        School last Attended(if any):&nbsp;
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        <br />
       
        </strong></p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Apply" />
    
        <asp:PopupControlExtender ID="Button1_PopupControlExtender" runat="server" 
            DynamicServicePath="" Enabled="True" ExtenderControlID="" PopupControlID="1" 
            TargetControlID="Button1">
        </asp:PopupControlExtender>
    
    </div>
    
    </form>
    <div>
    
<div class="wrapper col4">
  <div id="footer">
   <h2>DE NOBILI SCHOOL</h2><br>
   <div id="menu1">
  <ul style="color:#fff";>
<li class="current_page"><a href="index1.aspx" target="_self">Home</a></li> |
<li><a href="about us.html" target="_self">About Us</a></li>|

 <li><a href="photo slide.aspx" target="_self">Photo Album</a></li>
|
<li><a href="Fees.aspx" target="_self">Fees</a></li>|
 <li><a href="parent zone.aspx"target="_self">Parents Zone</a></li> 


 

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