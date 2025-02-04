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
try
{
	String a=request.getParameter("AGE");
	String b=request.getParameter("BP");
	String c=request.getParameter("SG");
	String d=request.getParameter("BGR");
	String e=request.getParameter("BU");
	String f=request.getParameter("SC");
	String g=request.getParameter("SOD");
	String h=request.getParameter("POT");
	String i=request.getParameter("HEMO");
	String j=request.getParameter("PCV");
	String k=request.getParameter("WC");
	String l=request.getParameter("RC");
	Connection con=databasecon.getconnection();
	String sql="select * from suggestion";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		int id=rs.getInt("id");
		String sql1="update suggestion set age=?,bp=?,sg=?,bgr=?,bu=?,sc=?,sod=?,pot=?,hemo=?,pcv=?,wc=?,rc=? where id=?";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setString(1, a);
		ps1.setString(2, b);
		ps1.setString(3, c);
		ps1.setString(4, d);
		ps1.setString(5, e);
		ps1.setString(6, f);
		ps1.setString(7, g);
		ps1.setString(8, h);
		ps1.setString(9, i);
		ps1.setString(10, j);
		ps1.setString(11, k);
		ps1.setString(12, l);
		ps1.setInt(13, id);
		ps1.execute();
		response.sendRedirect("sugession.jsp");
	}
	else
	{
		String sql1="insert into suggestion(age,bp,sg,bgr,bu,sc,sod,pot,hemo,pcv,wc,rc) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps1=con.prepareStatement(sql1);
		ps1.setString(1, a);
		ps1.setString(2, b);
		ps1.setString(3, c);
		ps1.setString(4, d);
		ps1.setString(5, e);
		ps1.setString(6, f);
		ps1.setString(7, g);
		ps1.setString(8, h);
		ps1.setString(9, i);
		ps1.setString(10, j);
		ps1.setString(11, k);
		ps1.setString(12, l);
		ps1.execute();
		response.sendRedirect("sugession.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>