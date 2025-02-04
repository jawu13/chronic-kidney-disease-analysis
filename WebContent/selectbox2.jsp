<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="database.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s=request.getParameter("city");
System.out.println("s:"+s);
%>
<option value="">--- select ---</option>
<%
try{

	Connection con=databasecon.getconnection();
	String sql="select distinct "+s+" from kidney_disease";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{		
				
		%>
		<option value="<%=rs.getString(""+s+"") %>"><%=rs.getString(""+s+"") %></option>
		<%
	}
}
catch (Exception eq5) 
{
	out.println(eq5.getMessage());
}
%>
</body>
</html>