<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classification.chart"%>
<%@page import="java.util.List"%>
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

table thead tr th{
	width: 150px;
	height: 50px;
	text-align: center;
	padding: 10px;
	background-color: gray;
	color: yellow;
	
}
table tbody tr td{
	width: 150px;
	height: 40px;
	text-align: left;
	padding: 10px;
	background-color: yellow;
	color: blue;
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
					<li><a href="ahome.jsp">Home</a></li>
					<li><a href="viewodc.jsp">Doctors</a></li>
					<li><a href="viewpeo.jsp">User</a></li>
					<li><a href="viewpeop.jsp">People</a></li>
					<li><a href="viewhos.jsp">Hospital</a></li>
					<li class="active"><a href="viewcha.jsp">Chart</a></li>
					<li><a href="admin.jsp">Logout</a></li>
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
				<form action="#">
<table class="tab">   
<tr><td><label style="color: blue;">Select Type:</label></td><td><select name="type" style="color: blue;">
<option value="column">Column Chart</option>
<option value="bar">Bar Chart</option>
<option value="area">Area Chart</option>
<option value="spline">Spline Chart</option>
<option value="pie">Pie Chart</option>
<option value="line">line Chart</option></select></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<td><input type="submit" value="submit" style="color: blue;" /></td></tr>
<%
List<chart> list=new ArrayList<chart>();
String s="";
try
{
	Connection conn=databasecon.getconnection();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select count(facility) as c,state from hospital where facility  like '%kidney%' group by state");
		while(rs.next())
				{
	    //System.out.println( output.getCommandResult() );
	    //Iterable<DBObject> list1= output.results();
	   
	    	String name =rs.getString("state");
	    	out.println(name);
	        int count = rs.getInt("c");
	      out.println(count);
	        chart gp=new chart();
	        gp.setName(name);	       
	        gp.setCount(count);
	        list.add(gp);
				}
	    for(Integer i =0;i<list.size(); i++)
	    {
	    	chart a = list.get(i);
	    	s=s+"{label: \""+a.getName()+"\",y:"+a.getCount()+"},";
	    } 

}
catch(Exception e)
{
	e.printStackTrace();
}
%>    
    </table></form>
     <%
   String type = request.getParameter("type");
   %>
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () 
{
	var chart = new CanvasJS.Chart("chartContainer", {
	theme: "theme2",//theme1
	title:{text: "Bio medical, Culstering Data" },
	animationEnabled: false,   // change to true
	data: [              
	{
	// Change type to "bar", "area", "spline", "pie",etc.
	type: "<%=type%>",
	dataPoints: [
	            <%=s%>
	]
	}
	]
	});
	chart.render();
}
</script>  
<div id="chartContainer" style="height: 600px; width: 1000px; margin-left: 100px; position: related;"></div>   

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