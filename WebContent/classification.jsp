<!DOCTYPE html>
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
<script type="text/javascript">
function fetch_select(val)
{
   $.ajax({
     type: 'post',
     url: 'selectbox1.jsp',
     data: {
       city:val
     },
     success: function (response) {
       document.getElementById("new_select").innerHTML=response; 
     }
   });
}

function fetch_select1(val)
{
   $.ajax({
     type: 'post',
     url: 'selectbox2.jsp',
     data: {
       city:val
     },
     success: function (response) {
       document.getElementById("new_select1").innerHTML=response; 
     }
   });
}

</script>
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
					<div class="intro_form_title">Patient Data Mining Using Bays Classification Algorithm</div>
						<form action="searchdb.jsp" method="post" class="intro_form" id="intro_form">
							<div class="d-flex flex-row align-items-start justify-content-between flex-wrap">
							<select name="field" style="width: 49%;" class="intro_input" onchange="fetch_select(this.value);" required="required">
							<option value="" hidden="hidden">--- select ---</option>
							<option value="rbc">RBC</option>
							<option value="pc">PC</option>
							<option value="pcc">PCC</option>
							<option value="ba">BA</option>
							<option value="htn">HTN</option>
							<option value="dm">DM</option>
							<option value="cad">CAD</option>
							<option value="appet">APPET</option>
							<option value="pe">PE</option>
							<option value="ane">ANE</option>
							</select>	
							<select name="val" id="new_select" style="width: 49%;" class="intro_input" required="required">
							<option value="" hidden="hidden">--- select ---</option>
							<option value="rbc">RBC</option>
							<option value="pc">PC</option>
							<option value="pcc">PCC</option>
							<option value="ba">BA</option>
							<option value="htn">HTN</option>
							<option value="dm">DM</option>
							<option value="cad">CAD</option>
							<option value="appet">APPET</option>
							<option value="pe">PE</option>
							<option value="ane">ANE</option>
							
							</select>	
							<select name="field1" style="width: 49%;" class="intro_input"  onchange="fetch_select1(this.value);" required="required">
							<option value="" hidden="hidden">--- select ---</option>
							<option value="rbc">RBC</option>
							<option value="pc">PC</option>
							<option value="pcc">PCC</option>
							<option value="ba">BA</option>
							<option value="htn">HTN</option>
							<option value="dm">DM</option>
							<option value="cad">CAD</option>
							<option value="appet">APPET</option>
							<option value="pe">PE</option>
							<option value="ane">ANE</option>
							</select>		
							<select name="val1" id="new_select1" style="width: 49%;" class="intro_input" required="required">
							<option value="">--- select ---</option>
							<option value="" hidden="hidden">--- select ---</option>
							<option value="rbc">RBC</option>
							<option value="pc">PC</option>
							<option value="pcc">PCC</option>
							<option value="ba">BA</option>
							<option value="htn">HTN</option>
							<option value="dm">DM</option>
							<option value="cad">CAD</option>
							<option value="appet">APPET</option>
							<option value="pe">PE</option>
							<option value="ane">ANE</option>
							</select>
							<select name="field2" style="width: 300px;" class="intro_input" required="required">
							<option value="" hidden="hidden">--- select ---</option>
							<option value="age">AGE</option>
							<option value="bp">BP</option>
							<option value="sg">SG</option>
							<option value="al">AL</option>
							<option value="su">SU</option>
							<option value="bgr">BGR</option>
							<option value="bu">BU</option>
							<option value="sc">SC</option>
							<option value="sod">SOD</option>
							<option value="pot">POT</option>
							<option value="hemo">HEMO</option>
							<option value="pcv">PCV</option>
							<option value="wc">WC</option>
							<option value="rc">RC</option>
							</select>
								
							<select name="log" style="width: 300px;" class="intro_input" required="required">
							<option value="" hidden="hidden">--- select ---</option>
							<option value="greater">GREATER THAN</option>
							<option value="less">LESS THAN</option>
							<option value="equal">EQUAL</option>
							<option value="between">BETWEEN</option>
							</select>	
							<input type="text" name="search" style="width: 300px;" class="intro_input">	
							<button type="submit" style="width: 150px;" class="button button_1 intro_button trans_200" >Search</button>						
							</div>		
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