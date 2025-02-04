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
String c=request.getParameter("data");
System.out.println("cat1============="+c);
	if(c.equals("hospital"))
	{
		%>
		<option value="facility">Facility</option>
		<option value="city">City</option>
		<option value="state">State</option>
		<%
	}else if(c.equals("user"))
	{
		%>
		<option value="gender">Gender</option>
		<option value="job">Job</option>
		<option value="city">City</option>
		<option value="state">State</option>
		<%
	}
	else if(c.equals("kidney_disease"))
	{
		%>
		<option value="age">Age</option>
		<option value="bp">BP</option>
		<option value="sg">SG</option>
		<option value="al">AL</option>
		<option value="su">SU</option>
		<option value="rbc">RBC</option>
		<option value="pc">PC</option>
		<option value="pcc">PCC</option>
		<option value="ba">BA</option>
		<option value="bgr">BGR</option>
		<option value="bu">BU</option>
		<option value="sc">SC</option>
		<option value="sod">SOD</option>
		<option value="pot">POT</option>
		<option value="hemo">HEMO</option>
		<option value="pcv">PCV</option>
		<option value="wc">WC</option>
		<option value="rc">RC</option>
		<option value="htn">HTN</option>
		<option value="dm">DM</option>
		<option value="cad">CAD</option>
		<option value="appet">APPET</option>
		<option value="pe">PE</option>
		<option value="ane">ANE</option>
		<%
	}
		
	
%>
</body>
</html>