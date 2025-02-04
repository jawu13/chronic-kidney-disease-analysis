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
	String a=request.getParameter("Age");
	String b=request.getParameter("BP");
	String c=request.getParameter("SG");
	String d=request.getParameter("AL");
	String e=request.getParameter("SU");
	String f=request.getParameter("RBC");
	String g=request.getParameter("PC");
	String h=request.getParameter("PCC");
	String i=request.getParameter("BA");
	String j=request.getParameter("BGR");
	String k=request.getParameter("BU");
	String l=request.getParameter("SC");
	String m=request.getParameter("SOD");
	String n=request.getParameter("POT");
	String o=request.getParameter("HEMO");
	String p=request.getParameter("PCV");
	String q=request.getParameter("WC");
	String r=request.getParameter("RC");
	String s=request.getParameter("HTN");
	String t=request.getParameter("DM");
	String u=request.getParameter("CAD");
	String v=request.getParameter("APPET");
	String w=request.getParameter("PE");
	String y=request.getParameter("ANE");
	Connection con=databasecon.getconnection();
	String sql="update kidney_disease set age=?,bp=?,sg=?,al=?,su=?,rbc=?,pc=?,pcc=?,ba=?,bgr=?,bu=?,sc=?,sod=?,pot=?,hemo=?,pcv=?,wc=?,rc=?,htn=?,dm=?,cad=?,appet=?,pe=?,ane=? where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, a);
	ps.setString(2, b);
	ps.setString(3, c);
	ps.setString(4, d);
	ps.setString(5, e);
	ps.setString(6, f);
	ps.setString(7, g);
	ps.setString(8, h);
	ps.setString(9, i);
	ps.setString(10, j);
	ps.setString(11, k);
	ps.setString(12, l);
	ps.setString(13, m);
	ps.setString(14, n);
	ps.setString(15, o);
	ps.setString(16, p);
	ps.setString(17, q);
	ps.setString(18, r);
	ps.setString(19, s);
	ps.setString(20, t);
	ps.setString(21, u);
	ps.setString(22, v);
	ps.setString(23, w);
	ps.setString(24, y);
	ps.setString(25, ss);
	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<script type="text/javascript">
		alert("updated successfully!");
		window.location="view.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script type="text/javascript">
		alert("update failed!");
		window.location="view.jsp";
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