<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="database.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
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
try
{	
	String a=request.getParameter("hname");
	String c=request.getParameter("spl");
	String d=request.getParameter("address");
	String e=request.getParameter("city");
	String f=request.getParameter("state");
	
	
	// con=databasecon.getconnection();
	//Class.forName("com.mysql.jdbc.Driver");	
	//Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/", "root", "root");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ckda","root","root");

	
	String sql="insert into hospital(hname,facility,address,city,state) values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, c);
	ps.setString(3, d);
	ps.setString(4, e);
	ps.setString(5, f);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script type="text/javascript">
		alert("uploaded successfully!");
		window.location="ahome.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script type="text/javascript">
		alert("upload failed!");
		window.location="ahome.jsp";
		</script>
		<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>