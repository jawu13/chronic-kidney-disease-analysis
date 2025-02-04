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
    String ss = (String) session.getAttribute("pid");
    out.println("pid : " + ss);
    String tt = (String) session.getAttribute("age");
    out.println("age=" + tt);
    String b = request.getParameter("BP");
    String c = request.getParameter("SG");
    String d = request.getParameter("AL");
    String e = request.getParameter("SU");
    String f = request.getParameter("RBC");
    String g = request.getParameter("PC");
    String h = request.getParameter("PCC");
    String i = request.getParameter("BA");
    String j = request.getParameter("BGR");
    String k = request.getParameter("BU");
    String l = request.getParameter("SC");
    String m = request.getParameter("SOD");
    String n = request.getParameter("POT");
    String o = request.getParameter("HEMO");
    String p = request.getParameter("PCV");
    String q = request.getParameter("WC");
    String r = request.getParameter("RC");
    String s = request.getParameter("HTN");
    String t = request.getParameter("DM");
    String u = request.getParameter("CAD");
    String v = request.getParameter("APPET");
    String w = request.getParameter("PE");
    String y = request.getParameter("ANE");
    Connection con = databasecon.getconnection();
    String sql = "insert into kidney_disease(pid,age,bp,sg,al,su,rbc,pc,pcc,ba,bgr,bu,sc,sod,pot,hemo,pcv,wc,rc,htn,dm,cad,appet,pe,ane,classification) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, ss);
    ps.setString(2, tt);
    ps.setString(3, b);
    ps.setString(4, c);
    ps.setString(5, d);
    ps.setString(6, e);
    ps.setString(7, f);
    ps.setString(8, g);
    ps.setString(9, h);
    ps.setString(10, i);
    ps.setString(11, j);
    ps.setString(12, k);
    ps.setString(13, l);
    ps.setString(14, m);
    ps.setString(15, n);
    ps.setString(16, o);
    ps.setString(17, p);
    ps.setString(18, q);
    ps.setString(19, r);
    ps.setString(20, s);
    ps.setString(21, t);
    ps.setString(22, u);
    ps.setString(23, v);
    ps.setString(24, w);
    ps.setString(25, y);
    ps.setString(26, "notckd");
    int x = ps.executeUpdate();
    if (x > 0)
    {
        %>
        <script type="text/javascript">
            alert("uploaded successfully!");
            window.location = "phome.jsp";
        </script>
        <%
    } else
    {
        %>
        <script type="text/javascript">
            alert("upload failed!");
            window.location = "phome.jsp";
        </script>
        <%
    }
}
catch (Exception e)
{
    e.printStackTrace();
}
%>
</body>
</html>