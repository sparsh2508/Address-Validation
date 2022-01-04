<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url();
	background-repeat: repeat;
}
body,td,th {
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
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
      <td width="27%" height="40" align="center" valign="middle"><em><img src="img/edd.jpg" width="373" height="186" /></em></td>
      <td width="73%" align="right" valign="top"><table   rules="rows" width="100%" height="140" border="1" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td height="38" colspan="2" valign="middle" bgcolor="#DD2132"><h1>Search Record</h1></td>
        </tr>
        <tr>
          <td width="167" height="34">Aadhaar Number</td>
          <td width="323" align="left"><span id="sprytextfield4">
            <input name="text1" type="text" id="text1" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td height="36">&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" /></td>
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
<script type="text/javascript">
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "phone_number", {format:"phone_custom", pattern:"xxxxxxxxxxxx"});
</script>
</body>
</html>