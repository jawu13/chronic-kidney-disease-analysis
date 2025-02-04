<%@ page import="database.databasecon" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<body>
<%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    String a = request.getParameter("email");
    out.println("email : " + a);

    String b = request.getParameter("pass");
    out.println("pass : " + b);

    con = databasecon.getconnection();
    String sql = "select * from people where email=? and password=?";
    ps = con.prepareStatement(sql);
    ps.setString(1, a);
    ps.setString(2, b);

    rs = ps.executeQuery();

    if (rs.next()) {
        String c = rs.getString("id");
        session.setAttribute("pid", c);
        response.sendRedirect("phome.jsp");
    } else {
        %>
        <script type="text/javascript">
            alert("Invalid email or password!");
            window.location = "user.jsp";
        </script>
        <%
    }
} catch (Exception e) {
    out.println("<p>An error occurred:</p>");
    StringWriter sw = new StringWriter();
    PrintWriter pw = new PrintWriter(sw);
    e.printStackTrace(pw);
    out.println("<pre>" + sw.toString() + "</pre>");
} finally {
    try {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (con != null) con.close();
    } catch (Exception ex) {
        out.println("<p>An error occurred while closing resources:</p>");
        ex.printStackTrace(new PrintWriter(out));
    }
}
%>
</body>
</html>