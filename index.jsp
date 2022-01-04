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
<form id="form1" name="form1" method="post" action="register_code.jsp">
 
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
          <td width="7%" align="center"><img src="icon/1.png" width="50" height="50" /></td>
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
      <td width="73%" align="right" valign="top"><table   rules="rows" width="100%" height="570" border="1" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td height="38" colspan="2" valign="middle" bgcolor="#DD2132"><h1><img src="img/x.jpg" width="494" height="36" /></h1></td>
        </tr>
        <tr>
          <td width="167" height="34">Name</td>
          <td width="323"><span id="sprytextfield1">
            <input name="text1" type="text" id="text1" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="34">Age</td>
          <td><span id="sprytextfield2">
          <input name="text2" type="text" id="text2" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td height="34">Gender</td>
          <td align="left"><span id="sprytextfield3">
          <input name="text3" type="text" id="text3" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="34">Aadhaar Number </td>
          <td align="left"><span id="sprytextfield4">
          <input name="text4" type="text" id="text4" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td height="34">Phone</td>
          <td align="left"><span id="sprytextfield5">
          <input name="text5" type="text" id="text5" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td height="34">Address Line 1</td>
          <td align="left"><span id="sprytextfield6">
          <textarea name="text6" cols="80" rows="5" id="text6"></textarea>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="34">City</td>
          <td align="left"><span id="sprytextfield7">
          <input name="text7" type="text" id="text7" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="34">State</td>
          <td align="left"><select name="select2" id="select2">
            <%
          	 
ResultSet rs1=st.executeQuery("select * from city_state_country WHERE state_nm IS NOT NULL");


while(rs1.next())
{
	%>
            <option><%=rs1.getString(3)%></option>
            <%
}
%>
          </select></td>
        </tr>
        <tr>
          <td height="34">Pin code</td>
          <td align="left"><span id="sprytextfield8">
          <input name="text8" type="text" id="text8" size="33" />
          <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        </tr>
        <tr>
          <td height="34">Country</td>
          <td align="left"><select name="select" id="select">
          <%
          	  String query="select * from city_state_country WHERE country_nm IS NOT NULL";
ResultSet rs=st.executeQuery(query);


while(rs.next())
{
	%>
  
	  <option><%=rs.getString(4)%></option>
      
<%
}
%>
           
            </select></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" /></td>
        </tr>
        <tr> </tr>
        <tr> </tr>
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
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "integer");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "phone_number", {format:"phone_custom", pattern:"xxxxxxxxxxxx"});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "phone_number", {format:"phone_custom", pattern:"xxxxxxxxxx"});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6");
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8", "zip_code", {format:"zip_custom", pattern:"xxxxxx"});
</script>
</body>
</html>