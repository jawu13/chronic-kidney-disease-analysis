<!DOCTYPE html>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
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
table {
	padding: 0;
	margin: 0;
}
table thead tr th{
	width: 100px;
	height: 50px;
	padding: 10px;
	text-align: center;
	font-size: 22px;
	font-weight: 400px;
}
table tbody tr td{
	width: 100px;
	height: 50px;
	padding: 10px;
	text-align: center;
	color: black;
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
					<li><a href="phome.jsp">Home</a></li>
					<li><a href="view.jsp">View</a></li>
					<li class="active"><a href="classification.jsp">Classification</a></li>
					<li><a href="user.jsp">Logout</a></li>
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
					<div class="intro_form_title">Chronic Disease Data Mining Using Bays Classification Algorithm</div>
						<div style="width: 1100px; height: 500px; overflow: scroll;">
						<table>
							<thead>
							<tr>
							<th>AGE</th>
							<th>BP</th>
							<th>SG</th>
							<th>AL</th>
							<th>SU</th>
							<th>RBC</th>
							<th>PC</th>
							<th>PCC</th>
							<th>BA</th>
							<th>BGR</th>
							<th>BU</th>
							<th>SC</th>
							<th>SOD</th>
							<th>POT</th>
							<th>HEMO</th>
							<th>PCV</th>
							<th>WC</th>
							<th>RC</th>
							<th>HTN</th>
							<th>DM</th>
							<th>CAD</th>
							<th>APPET</th>
							<th>PE</th>
							<th>ANE</th>
							<th>POSSIBILITY</th>
							</tr>
							</thead>
							<%
							try
							{								
								
								List<Integer> list=new ArrayList<Integer>();
								List<Double> list1=new ArrayList<Double>();
								String a=request.getParameter("field");
								out.println("field : "+a);
								String b=request.getParameter("val");
								out.println("val : "+b);
								String c=request.getParameter("field1");
								out.println("field1 : "+c);
								String d=request.getParameter("val1");
								out.println("val1 : "+d);
								String e=request.getParameter("field2");
								out.println("field2 : "+e);								
								String f=request.getParameter("log");
							     out.println("log : "+f);
								String g=request.getParameter("search");
								out.println("search : "+g);
								Connection con=databasecon.getconnection();
								int a1=0,b1=0,c1=0,d1=0,e1=0,f1=0,g1=0,h1=0;
								double i1=0,j1=0,k1=0,l1=0;
								String sql1="select * from suggestion";
								PreparedStatement ps2=con.prepareStatement(sql1);
								ResultSet rs2=ps2.executeQuery();
								if(rs2.next())
								{ 
									out.println("suggestion");
									a1=rs2.getInt("age");
									b1=rs2.getInt("bp");
									i1=rs2.getDouble("sg");
									c1=rs2.getInt("bgr");
									d1=rs2.getInt("bu");
									j1=rs2.getDouble("sc");
									e1=rs2.getInt("sod");
									f1=rs2.getInt("pot");
									k1=rs2.getDouble("hemo");
									g1=rs2.getInt("pcv");
									h1=rs2.getInt("wc");
									l1=rs2.getDouble("rc");
								}								
								String sql=null;
								if(e.equals("age") || e.equals("bp") || e.equals("su") || e.equals("bgr") || e.equals("bu") || e.equals("sod") || e.equals("wc"))
								{		
									String sqll="select "+e+" from kidney_disease";
									PreparedStatement ps1=con.prepareStatement(sqll);
									ResultSet rs1=ps1.executeQuery();
									{
										while(rs1.next())
										{
											int dd=rs1.getInt(e);
											list.add(dd);
										}
									}	
								out.println("list : "+list.size());
									if(f.equals("between"))
									{
										String[] ss=g.split(",");
										out.println("sss 1:"+ss[0]);
										int s1=Integer.parseInt(ss[0]);
										out.println("sss 2:"+ss[1]);
										int s2=Integer.parseInt(ss[1]);
										
										for(int i=s2; i<s2; i++)
										{
											out.println("i : "+i);
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setInt(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{
												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}										
									}
									else if(f.equals("greater"))
									{
										int t=Integer.parseInt(g);
										int t1 =Collections.max(list);
										out.println("max in list : "+Collections.max(list));
										for(int i=t; i<t1; i++)
										{
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setInt(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{

												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}
										
									}
									else if(f.equals("less"))
									{
										int t=Integer.parseInt(g);
										int t1 =Collections.min(list);
										out.println("min in list : "+Collections.max(list));
										for(int i=t; i>t1; i--)
										{
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setInt(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{

												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}
										
									}
									else if(f.equals("equal"))
									{				
										int g3=Integer.parseInt(g);
										sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
										PreparedStatement ps=con.prepareStatement(sql);
										ps.setString(1, b);
										ps.setString(2, d);
										ps.setInt(3, g3);
										ResultSet rs=ps.executeQuery();
										while(rs.next())
										{

											int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
											double i2=0,j2=0,k2=0,l2=0;
											int n=0;
											a2=rs2.getInt("age");
											b2=rs2.getInt("bp");
											i2=rs2.getDouble("sg");
											c2=rs2.getInt("bgr");
											d2=rs2.getInt("bu");
											j2=rs2.getDouble("sc");
											e2=rs2.getInt("sod");
											f2=rs2.getInt("pot");
											k2=rs2.getDouble("hemo");
											g2=rs2.getInt("pcv");
											h2=rs2.getInt("wc");
											l2=rs2.getDouble("rc");
											if(a2>=a1){n=n+8;}
											if(b2>=b1){n=n+8;}
											if(c2>=c1){n=n+8;}
											if(d2>=d1){n=n+8;}
											if(e2>=e1){n=n+8;}
											if(f2>=f1){n=n+8;}
											if(g2>=g1){n=n+8;}
											if(h2<h1){n=n+8;}
											if(i2>=i1){n=n+8;}
											if(j2>=j1){n=n+8;}
											if(k2>=k1){n=n+8;}
											if(l2<l1){n=n+8;}
											%>
											<tr>
											<td><%=rs.getString("age") %></td>
											<td><%=rs.getString("bp") %></td>
											<td><%=rs.getString("sg") %></td>
											<td><%=rs.getString("al") %></td>
											<td><%=rs.getString("su") %></td>
											<td><%=rs.getString("rbc") %></td>
											<td><%=rs.getString("pc") %></td>
											<td><%=rs.getString("pcc") %></td>
											<td><%=rs.getString("ba") %></td>
											<td><%=rs.getString("bgr") %></td>
											<td><%=rs.getString("bu") %></td>
											<td><%=rs.getString("sc") %></td>
											<td><%=rs.getString("sod") %></td>
											<td><%=rs.getString("pot") %></td>
											<td><%=rs.getString("hemo") %></td>
											<td><%=rs.getString("pcv") %></td>
											<td><%=rs.getString("wc") %></td>
											<td><%=rs.getString("rc") %></td>
											<td><%=rs.getString("htn") %></td>
											<td><%=rs.getString("dm") %></td>
											<td><%=rs.getString("cad") %></td>
											<td><%=rs.getString("appet") %></td>
											<td><%=rs.getString("pe") %></td>
											<td><%=rs.getString("ane") %></td>
											<td><%=n %></td>
											</tr>							
											<%
										}
									}
									else
									{
										%>
										<script>
										alert("invalid data!...");
										window.location="classification.jsp";
										</script>
										<%
									}
								}
								else
								{
									
									String sqll="select "+e+" from kidney_disease";
									PreparedStatement ps1=con.prepareStatement(sqll);
									ResultSet rs1=ps1.executeQuery();
									{
										while(rs1.next())
										{
											Double dd=Double.valueOf(rs1.getDouble(e));
											list1.add(dd);
										}
									}
									if(f.equals("between"))
									{
										String[] ss=g.split(",");
										double s1=Double.parseDouble(ss[0]);
										out.println("ss 1:"+s1);
										double s2=Double.parseDouble(ss[1]);
										out.println("ss 2:"+s2);
										for(double i=s1; i<s2; i++)
										{
											out.println("i : "+i);
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setDouble(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{

												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}
										
									}
									else if(f.equals("greater"))
									{
										double t=Double.parseDouble(g);
										double t1 =Collections.max(list1);
										out.println("max in list : "+Collections.max(list1));
										for(double i=t; i<t1; i++)
										{
											
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setDouble(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{

												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}
										
									}
									else if(f.equals("less"))
									{
										double t=Double.parseDouble(g);
										double t1 =Collections.min(list1);
										out.println("min in list : "+Collections.max(list1));
										for(double i=t; i>t1; i--)
										{
											sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
											PreparedStatement ps=con.prepareStatement(sql);
											ps.setString(1, b);
											ps.setString(2, d);
											ps.setDouble(3, i);
											ResultSet rs=ps.executeQuery();
											while(rs.next())
											{

												int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
												double i2=0,j2=0,k2=0,l2=0;
												int n=0;
												a2=rs2.getInt("age");
												b2=rs2.getInt("bp");
												i2=rs2.getDouble("sg");
												c2=rs2.getInt("bgr");
												d2=rs2.getInt("bu");
												j2=rs2.getDouble("sc");
												e2=rs2.getInt("sod");
												f2=rs2.getInt("pot");
												k2=rs2.getDouble("hemo");
												g2=rs2.getInt("pcv");
												h2=rs2.getInt("wc");
												l2=rs2.getDouble("rc");
												if(a2>=a1){n=n+8;}
												if(b2>=b1){n=n+8;}
												if(c2>=c1){n=n+8;}
												if(d2>=d1){n=n+8;}
												if(e2>=e1){n=n+8;}
												if(f2>=f1){n=n+8;}
												if(g2>=g1){n=n+8;}
												if(h2<h1){n=n+8;}
												if(i2>=i1){n=n+8;}
												if(j2>=j1){n=n+8;}
												if(k2>=k1){n=n+8;}
												if(l2<l1){n=n+8;}
												%>
												<tr>
												<td><%=rs.getString("age") %></td>
												<td><%=rs.getString("bp") %></td>
												<td><%=rs.getString("sg") %></td>
												<td><%=rs.getString("al") %></td>
												<td><%=rs.getString("su") %></td>
												<td><%=rs.getString("rbc") %></td>
												<td><%=rs.getString("pc") %></td>
												<td><%=rs.getString("pcc") %></td>
												<td><%=rs.getString("ba") %></td>
												<td><%=rs.getString("bgr") %></td>
												<td><%=rs.getString("bu") %></td>
												<td><%=rs.getString("sc") %></td>
												<td><%=rs.getString("sod") %></td>
												<td><%=rs.getString("pot") %></td>
												<td><%=rs.getString("hemo") %></td>
												<td><%=rs.getString("pcv") %></td>
												<td><%=rs.getString("wc") %></td>
												<td><%=rs.getString("rc") %></td>
												<td><%=rs.getString("htn") %></td>
												<td><%=rs.getString("dm") %></td>
												<td><%=rs.getString("cad") %></td>
												<td><%=rs.getString("appet") %></td>
												<td><%=rs.getString("pe") %></td>
												<td><%=rs.getString("ane") %></td>
												<td><%=n %></td>
												</tr>							
												<%
											}
										}
										
									}
									else if(f.equals("equal"))
									{
										double t=Double.parseDouble(g);
										sql="select * from kidney_disease where "+a+"=? and "+c+"=? and "+e+"=?";
										PreparedStatement ps=con.prepareStatement(sql);
										ps.setString(1, b);
										ps.setString(2, d);
										ps.setDouble(3, t);
										ResultSet rs=ps.executeQuery();
										while(rs.next())
										{

											int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,g2=0,h2=0;
											double i2=0,j2=0,k2=0,l2=0;
											int n=0;
											a2=rs2.getInt("age");
											b2=rs2.getInt("bp");
											i2=rs2.getDouble("sg");
											c2=rs2.getInt("bgr");
											d2=rs2.getInt("bu");
											j2=rs2.getDouble("sc");
											e2=rs2.getInt("sod");
											f2=rs2.getInt("pot");
											k2=rs2.getDouble("hemo");
											g2=rs2.getInt("pcv");
											h2=rs2.getInt("wc");
											l2=rs2.getDouble("rc");
											if(a2>=a1){n=n+8;}
											if(b2>=b1){n=n+8;}
											if(c2>=c1){n=n+8;}
											if(d2>=d1){n=n+8;}
											if(e2>=e1){n=n+8;}
											if(f2>=f1){n=n+8;}
											if(g2>=g1){n=n+8;}
											if(h2<h1){n=n+8;}
											if(i2>=i1){n=n+8;}
											if(j2>=j1){n=n+8;}
											if(k2>=k1){n=n+8;}
											if(l2<l1){n=n+8;}
											%>
											<tr>
											<td><%=rs.getString("age") %></td>
											<td><%=rs.getString("bp") %></td>
											<td><%=rs.getString("sg") %></td>
											<td><%=rs.getString("al") %></td>
											<td><%=rs.getString("su") %></td>
											<td><%=rs.getString("rbc") %></td>
											<td><%=rs.getString("pc") %></td>
											<td><%=rs.getString("pcc") %></td>
											<td><%=rs.getString("ba") %></td>
											<td><%=rs.getString("bgr") %></td>
											<td><%=rs.getString("bu") %></td>
											<td><%=rs.getString("sc") %></td>
											<td><%=rs.getString("sod") %></td>
											<td><%=rs.getString("pot") %></td>
											<td><%=rs.getString("hemo") %></td>
											<td><%=rs.getString("pcv") %></td>
											<td><%=rs.getString("wc") %></td>
											<td><%=rs.getString("rc") %></td>
											<td><%=rs.getString("htn") %></td>
											<td><%=rs.getString("dm") %></td>
											<td><%=rs.getString("cad") %></td>
											<td><%=rs.getString("appet") %></td>
											<td><%=rs.getString("pe") %></td>
											<td><%=rs.getString("ane") %></td>
											<td><%=n %></td>
											</tr>							
											<%
										}
									}
									else
									{
										%>
										<script>
										alert("invalid data!...");
										window.location="classification.jsp";
										</script>
										<%
									}
								}	
								
							}
							catch(Exception e)
							{
								e.printStackTrace();
							}
							%>										
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