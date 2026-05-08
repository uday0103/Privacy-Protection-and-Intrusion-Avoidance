<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Attacker</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style4 {font-size: 18px}
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
          <li><a href="owner_login.jsp"><span>IOT Device</span></a></li>
          <li><a href="user_login.jsp"><span>Health Care Center</span></a></li>
          <li><a href="cs_login.jsp"><span>Medical Cloud Servers</span></a></li>
          <li class="active"><a href="au_login.jsp"><span>KPS</span></a></li>
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
          <h2 align="center"> View All Attacker Details by Wrong Secret Key</h2>
          <p align="center">&nbsp;</p>
          <table width="691" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="31" height="49"  valign="middle" bgcolor="#66CCFF" style="color: #2c83b0;"><div align="center" class="style5 style6 style7 style21 style15 style4"><strong>ID</strong></div></td>
			<td  width="181" height="49" valign="middle" bgcolor="#66CCFF" style="color: #2c83b0;"><div align="center" class="style5 style6 style7 style21 style15 style4"><strong>Patient Name</strong></div></td>
            <td  width="193" height="49" valign="middle" bgcolor="#66CCFF" style="color: #2c83b0;"><div align="center" class="style5 style6 style7 style21 style15 style4"><strong>Attacker Name </strong></div></td>
            <td  width="128" height="49" valign="middle" bgcolor="#66CCFF" style="color: #2c83b0;"><div align="center" class="style5 style6 style7 style21 style15 style4"><strong> Type </strong></div></td>
            <td  width="146" height="49" valign="middle" bgcolor="#66CCFF" style="color: #2c83b0;"><div align="center" class="style5 style6 style7 style21 style15 style4"><strong>Date</strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from attacker"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);//pn
								s4=rs.getString(4);
								s5=rs.getString(5);
								
								
							
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s4);%>
                  <p>&nbsp; </p>
                </div></td>
			<td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(s5);%>
                  <p>&nbsp; </p>
                </div></td>
          </tr>
          <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          <tr>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
          </tr>
        </table>
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
		  <p align="center"><a href="au_main.jsp" class="style14">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>KPS</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="au_main.jsp"><span> KPS Main</span></a></li>
            <li><a href="au_login.jsp"><span>Log Out</span></a></li>
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
