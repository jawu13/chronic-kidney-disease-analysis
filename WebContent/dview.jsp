<!DOCTYPE html>
<%@page import="database.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
<title>Dr PRO</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Dr PRO template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<style type="text/css">
table tr td {
	width: 500px;
}
</style>
</head>
<body>
<%
String ss=(String)session.getAttribute("did");
System.out.println("did : "+ss);
%>
<div class="super_container">
	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center jusity-content-start trans_400">
			<!-- Main Navigation -->
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<li  class="active"><a href="dhome.jsp">Home</a></li>
					<li><a href="sugession.jsp">Suggestion</a></li>
					<li><a href="doctor.jsp">Logout</a></li>
				</ul>
			</nav>
			<div class="header_extra d-flex flex-row align-items-center justify-content-end ml-auto">
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>
		</div>
	</header>
	<div class="menu_overlay trans_400"></div>
	<div class="intro">
		<div class="container">
			<div class="row" style="padding-top: 50px;">
				<!-- Intro Content -->
				<div class="col-lg-12 intro_col">
					<div class="intro_form_container">
					<div class="intro_form_title">Update Result</div>
						<form action="update1.jsp" method="post" class="intro_form" id="intro_form">
							<div class="d-flex flex-row align-items-start justify-content-between flex-wrap">
							<table>
							<%
							try
							{
								String id=request.getParameter("id");
								System.out.println("id :"+id);
								Connection con=databasecon.getconnection();
								String sql="select * from kidney_disease where pid=?";
								PreparedStatement ps=con.prepareStatement(sql);
								ps.setString(1, id);
								ResultSet rs=ps.executeQuery();
								if(rs.next())
								{
									%>
									<tr>
									<input type="hidden" name="pid" value="<%=id %>">
							<td><label>BP:</label><input type="text" value="<%=rs.getString("bp") %>" class="intro_input" readonly="readonly"></td>
							<td><label>Checked:</label><input type="text" name="class" value="<%=rs.getString("classification") %>" class="intro_input"></td>
							</tr>
							<tr>
							<td><label>SG:</label><input type="text" value="<%=rs.getString("sg") %>" class="intro_input" readonly="readonly"></td>
							<td><label>AL:</label><input type="text" value="<%=rs.getString("al") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>SU:</label><input type="text" value="<%=rs.getString("su") %>" class="intro_input" readonly="readonly"></td>
							<td><label>RBC:</label><input type="text" value="<%=rs.getString("rbc") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>PC:</label><input type="text" value="<%=rs.getString("pc") %>" class="intro_input" readonly="readonly"></td>
							<td><label>PCC:</label><input type="text" value="<%=rs.getString("pcc") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>BA:</label><input type="text" value="<%=rs.getString("ba") %>" class="intro_input" readonly="readonly"></td>
							<td><label>BGR:</label><input type="text" value="<%=rs.getString("bgr") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>BU:</label><input type="text" value="<%=rs.getString("bu") %>" class="intro_input" readonly="readonly"></td>
							<td><label>SC:</label><input type="text" value="<%=rs.getString("sc") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>SOD:</label><input type="text" value="<%=rs.getString("sod") %>" class="intro_input" readonly="readonly"></td>
							<td><label>POT:</label><input type="text" value="<%=rs.getString("pot") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>HEMO:</label><input type="text" value="<%=rs.getString("hemo") %>" class="intro_input" readonly="readonly"></td>
							<td><label>PCV:</label><input type="text" value="<%=rs.getString("pcv") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>WC:</label><input type="text" value="<%=rs.getString("wc") %>" class="intro_input" readonly="readonly"></td>
							<td><label>RC:</label><input type="text" value="<%=rs.getString("rc") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>HTN:</label><input type="text" value="<%=rs.getString("htn") %>" class="intro_input" readonly="readonly"></td>
							<td><label>DM:</label><input type="text" value="<%=rs.getString("dm") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>CAD:</label><input type="text" value="<%=rs.getString("cad") %>" class="intro_input" readonly="readonly"></td>
							<td><label>APPET:</label><input type="text" value="<%=rs.getString("appet") %>" class="intro_input" readonly="readonly"></td>
							</tr>
							<tr>
							<td><label>PE:</label><input type="text" value="<%=rs.getString("pe") %>" class="intro_input" readonly="readonly"></td>
							<td><label>ANE:</label><input type="text" value="<%=rs.getString("ane") %>" class="intro_input" readonly="readonly"></td>
							</tr>
										
									<%
								}
							}
							catch(Exception e)
							{
								e.printStackTrace();
							}
							%>
							
										
							</table>															
							</div>							
							<button class="button button_1 intro_button trans_200" type="submit">SUBMIT</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="footer_content">
			<div class="container">
				<div class="row">


				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					
				</div>
			</div>			
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/jquery-datepicker/jquery-ui.js"></script>
<script src="js/custom.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
</body>
</html>