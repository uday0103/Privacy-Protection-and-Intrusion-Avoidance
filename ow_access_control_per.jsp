<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Access Control Permission</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript"> 
function valid()
{
var na3=document.s.qt.value;
if(na3=="-Select-")

{
alert("Please Select Patient Name ");
document.s.qt.focus();
return false;
}
var na33=document.s.tm.value;
if(na33=="-Select-")

{
alert("Please Select Department ");
document.s.tm.focus();
return false;
}
var na333=document.s.cl.value;
if(na333=="-Select-")

{
alert("Please Select Profession ");
document.s.cl.focus();
return false;
}
}      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.jsp" class="style1 style2">A Secure and Efficient Cloud-Centric Internet of Medical Things Enabled <br /> Smart Healthcare System with Public Verifiability </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="owner_login.jsp"><span>IOT Device</span></a></li>
          <li><a href="user_login.jsp"><span>Health Care Center</span></a></li>
          <li><a href="cs_login.jsp"><span>Medical Cloud Servers</span></a></li>
          <li><a href="au_login.jsp"><span>KPS</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Set Access Control Permission  </h2>
          <p align="center">&nbsp;</p>
          
		  <form name="s" action="ow_access_control_per1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
		 
		 <table><tr>
		  
          <td>Select Patient Name
            <p class="style4">
                    <select id="qt" name="qt" style="width:220px;" class="text">
                      <option>-Select-</option>
					  
					  
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
					  
<%
try 
{
    String on=(String)application.getAttribute("ow");
   
    Statement stmt1=connection.createStatement();
	String strQuery1 = "select pname from patient_details where owname='"+on+"'  ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
	  String pn = rs1.getString(1);
	
%>
                  <option> <%=pn%></option>
<%
	}
%>
                    </select>
			      </p>
          </td>
            <td>  
				  <span class="style5">Select Department </span>
                   <p class="style4">
                    <select id="tm" name="tm" style="width:180px;" class="text">
                      <option>-Select-</option>
					  
                         <option>Cardiology</option>
                         <option>Neurology</option>
                         <option>Nephrology</option>
                    </select>
				   </p>
            </td>
			  <td>  
				   <span class="style5"> Select Profession </span>
                   <p class="style4">
                    <select id="cl" name="cl" style="width:180px;" class="text">
                      <option>-Select-</option>
					  
                         <option>Doctor</option>
                         <option>Nurse</option>
						 <option>Surgeon</option>
                    </select>
				   </p>
			  </td>
			    
		</tr>
		 <tr>
				   <td></td>
				<td>
                  <p>&nbsp; </p>
                  <p align="center"> <input name="submit" type="submit" value=" Set Access Control" /> </p>
			    </td>
		 </tr></table> 
          </form>

<%

}

catch(Exception e)
{
out.println(e.getMessage());
}
 
%>

		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
		  <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>IOT Device</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ow_main.jsp"><span>IOT Device Main</span></a></li>
            <li><a href="owner_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
