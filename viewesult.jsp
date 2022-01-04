<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
	background-repeat: repeat;
}
body,td,th {
}
.style20 {font-size: 14px;
	font-weight: bold;
}
.style201 {font-size: 14px;
	font-weight: bold;
}
</style>
</head>

<body>
<%@ include file="conn.jsp"%>
<form id="form1" name="form1" method="post" action="viewesult.jsp">
 
  <table rules="none" width="90%" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td height="131" colspan="2" valign="middle" bgcolor="#010002"><em>
        <marquee direction="left">
        </marquee>
      <img src="img/hd.jpg" width="664" height="62" /></em></td>
    </tr>
    <tr>
      <td colspan="2" valign="top"><table rules="rows" width="100%" border="1">
        <tr>
          <td width="7%" align="center"><a href="index.jsp"><img src="icon/1.png" width="50" height="50" /></a></td>
          <td width="5%"><h3><strong>Home</strong></h3></td>
          <td width="37%">&nbsp;</td>
          <td width="5%"><a href="Search.jsp"><img src="icon/2.jpg" width="50" height="50" /></a></td>
          <td width="5%" bgcolor="#FFFFFF"><h3><strong>Search</strong></h3></td>
          <td width="41%">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td width="27%" height="40" align="center" valign="middle"><em><img src="img/edd.jpg" width="359" height="162" /></em></td>
      <td width="73%" align="right" valign="top"><p>&nbsp;</p>
        <table rules="none" width="85%" border="1" align="center" cellpadding="8" cellspacing="8">
        <tr>
          <td colspan="2" bgcolor="#DD2132"><h1>RECORD DETAILS</h1></td>
          </tr>
        <%
					String a=request.getParameter("text1");
					
String query="select * from addval where Adhar_id='"+a+"'";
ResultSet rs=st.executeQuery(query);
				int fk=0;
            while(rs.next())
			{
	
%>
        <tr>
          <td width="200">Name</td>
          <td width="240"><span style="font-size:12px"><%=rs.getString(1)%></span></td>
        </tr>
        <tr>
          <td>Age</td>
          <td><span style="font-size:12px"><%=rs.getString(2)%></span></td>
        </tr>
        <tr>
          <td>Gender</td>
          <td><span style="font-size:12px"><%=rs.getString(3)%></span></td>
        </tr>
        <tr>
          <td>Aadhaar Number</td>
          <td><span style="font-size:12px"><%=rs.getString(4)%></span></td>
        </tr>
        <tr>
          <td>Phone</td>
          <td><span style="font-size:12px"><%=rs.getString(5)%></span></td>
        </tr>
        <tr>
          <td>Address Line 1</td>
          <td><span style="font-size:12px"><%=rs.getString(6)%></span></td>
        </tr>
        <tr>
          <td>City</td>
          <td><span style="font-size:12px"><%=rs.getString(7)%></span></td>
        </tr>
        <tr>
          <td>State</td>
          <td><span style="font-size:12px"><%=rs.getString(8)%></span></td>
        </tr>
        <tr>
          <td>Pin code</td>
          <td><span style="font-size:12px"><%=rs.getString(9)%></span></td>
        </tr>
        <tr>
          <td>Country</td>
          <td><span style="font-size:12px"><%=rs.getString(10)%></span></td>
          
  <%
}
%>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="40" colspan="2" align="right" valign="top">&nbsp;</td>
    </tr>
    <tr>
      <td height="40" colspan="2" align="right" valign="top" bgcolor="#CCCCCC">&nbsp;</td>
    </tr>
  </table>

</form>
</body>
</html>