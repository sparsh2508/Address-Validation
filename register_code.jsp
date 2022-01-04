<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*"  errorPage="" %>
	
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<%@page import="java.io.*"%>

<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<body>
					 
<%
String a=request.getParameter("text1");
String b=request.getParameter("text2");
String c=request.getParameter("text3");
String d=request.getParameter("text4");
String e=request.getParameter("text5");

String f=request.getParameter("text6");
String g=request.getParameter("text7");
String h=request.getParameter("select2");
String i2=request.getParameter("text8");
String j=request.getParameter("select");



//------------------------------------------------------------------Add line------------------------------------------------------------------
String[] xyz = new String[4];

xyz[0]=g;
xyz[1]=h;
xyz[2]=i2;
xyz[3]=j;

String in1=request.getParameter("text6");

String in=in1+" ";
		String str=null;
			

		long len=0;
		int i1=0,i=0,ct=0,pos=0,k=0;
		String trim = in.trim();
		
		trim = trim.replace("\n"," ");
		
					   
			if (!trim.isEmpty()) 
			len=trim.split("\\s+").length; 
			//out.print(xyz[0]);
			 String Add_h_colo="";	 
				
				for(i=0;i<len;i++)
				{
				String words[] = trim.split(" ");
				str=words[i];
				
					ct=0;
					pos=0;
						for(;ct<4;ct++)
						{
						
								if(xyz[ct].equalsIgnoreCase(str))
								{
								
								pos++;
								}
						
						}
						
							if(pos==0)
							{
								Add_h_colo=Add_h_colo+str+" ";	
								
								k++;
								
	
							}
							
							
						}
		
		
		out.print(Add_h_colo);
		

//==================================================city=====================================================================================
String d_data="";

			
String query="select * from city_state_country";
ResultSet rs=st.executeQuery(query);

int fk=0;
            while(rs.next())
			{
	
		d_data=rs.getString(2);
			


 Pattern pattern = Pattern.compile(d_data, Pattern.CASE_INSENSITIVE);
    Matcher matcher = pattern.matcher(g);
     boolean matchFound = matcher.find();
  		 fk++;
			
		if(matchFound)
   		 {
   //  out.print("Match found");
	 break;
    	} 
		
   }
    out.print(d_data);
//==============================================================================================================================================


try
{

String querye="insert into addval values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+Add_h_colo+"','"+d_data+"','"+h+"','"+i2+"','"+j+"')";
int in2=st.executeUpdate(querye);

if(in2==1)
{
response.sendRedirect("index.jsp");
}
}
catch(Exception ee)
{
out.print(ee);
}

%>

</body>
</html>
