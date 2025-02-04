<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="database.databasecon"%>
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
.report {
width: 100%;
height: 600px;
overflow: scroll;
}
.report table thead tr th{
	 height: 50px;
	 padding: 10px;
	 font-size: 18px;
	 text-align: center;
	 color: white;
	 background-color: lime;
}
.report table tbody tr td{
	 height: 50px;
	 padding: 10px;
	 font-size: 18px;
	 text-align: center;
	 color: black;
	 background-color: white;
}
</style>
</head>
<body>
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
					<div class="intro_form_title">People Personal Data</div>
					<div class="report">
					<table>
					<thead>
					<tr>
					<th>ID</th>
					<th>NAME</th>
							<th>GENDER</th>
							<th>AGE</th>
							<th>JOB</th>
							<th>SYMPTOMS</th>
							<th>ADDRESS</th>
							<th>CITY</th>
							<th>STATE</th>
							<th>MEDICAL DATA</th>
					</tr>
					</thead>
					<tbody>
					<%
					try
					{
						
						String a=null;
						Connection con=databasecon.getconnection();
						String sql="select * from user";
						PreparedStatement ps=con.prepareStatement(sql);
						ResultSet rs=ps.executeQuery();
						while(rs.next())
						{
							%>
							<tr>
									<td><%=rs.getString("id") %></td>
									<td><%=rs.getString("name") %></td>
									<td><%=rs.getString("gender") %></td>
									<td><%=rs.getString("age") %></td>
									<td><%=rs.getString("job") %></td>
									<td><%=rs.getString("symptoms") %></td>
									<td><%=rs.getString("address") %></td>
									<td><%=rs.getString("city") %></td>
									<td><%=rs.getString("state") %></td>
									<td><a href="dview.jsp?id=<%=rs.getString("id") %>">view</a></td>
									</tr>		
							<%
						}
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
					%>
					
					</tbody>
					</table>	
					</div>
					
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