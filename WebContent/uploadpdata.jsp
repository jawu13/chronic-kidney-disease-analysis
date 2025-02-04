<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="database.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
try {
    java.util.Date now = new java.util.Date();
    String date = now.toString();
    String DATE_FORMAT = "dd-MM-yyyy hh:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now);

    String a = request.getParameter("name");
    String b = request.getParameter("gender");
    String c = request.getParameter("age");
    session.setAttribute("age", c);
    String e = request.getParameter("job");
    String g = request.getParameter("habit");
    String h = request.getParameter("address");
    String i = request.getParameter("city");
    String j = request.getParameter("state");

    Connection con = databasecon.getconnection();
    String sql = "insert into user(name,gender,age,job,symptoms,address,city,state) values(?,?,?,?,?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, a);
    ps.setString(2, b);
    ps.setString(3, c);
    ps.setString(4, e);
    ps.setString(5, g);
    ps.setString(6, h);
    ps.setString(7, i);
    ps.setString(8, j);
    int x = ps.executeUpdate();

    String sql1 = "select id from user order by id desc limit 1";
    PreparedStatement ps1 = con.prepareStatement(sql1);
    ResultSet rs = ps1.executeQuery();

    if (rs.next()) {
        String pid = rs.getString("id");
        out.println("pid: " + pid);
        session.setAttribute("pid", pid);
    }

    if (x > 0) {
        %>
        <script type="text/javascript">
            alert("Uploaded successfully!");
            window.location = "testdata.jsp";
        </script>
        <%
    } else {
        %>
        <script type="text/javascript">
            alert("Upload failed!");
            window.location = "phome.jsp";
        </script>
        <%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</body>
</html>