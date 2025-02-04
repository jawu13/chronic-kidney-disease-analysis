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
String ss=(String)session.getAttribute("pid");
System.out.println("pid : "+ss);

try
{
	String a=request.getParameter("pid");
	String b=request.getParameter("class");
	Connection con=databasecon.getconnection();
	String sql="update kidney_disease set classification=? where pid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, b);
	ps.setString(2, a);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script type="text/javascript">
		alert("updated successfully!");
		window.location="dhome.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script type="text/javascript">
		alert("update failed!");
		window.location="dview.jsp";
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