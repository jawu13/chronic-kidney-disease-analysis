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
</head>
<body>
<div class="super_container">
	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center jusity-content-start trans_400">
			<!-- Main Navigation -->
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<li><a href="dhome.jsp">Home</a></li>
					<li class="active"><a href="sugession.jsp">Suggestion</a></li>
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
					<div class="intro_form_title">Possibility of Patient Oriented Big Data & C-means Clustering </div>
						<form action="suggdb.jsp" method="post" class="intro_form" id="intro_form">
							<div class="d-flex flex-row align-items-start justify-content-between flex-wrap">
								<input type="text" name="AGE" class="intro_input" placeholder="AGE" required="required" style="width: 49%">
								<input type="text" name="BP" class="intro_input" placeholder="BP" required="required" style="width: 49%">
								<input type="text" name="SG" class="intro_input" placeholder="SG" required="required" style="width: 49%">
								<input type="text" name="BGR" class="intro_input" placeholder="BGR" required="required" style="width: 49%">
								<input type="text" name="BU" class="intro_input" placeholder="BU" required="required" style="width: 49%">
								<input type="text" name="SC" class="intro_input" placeholder="SC" required="required" style="width: 49%">
								<input type="text" name="SOD" class="intro_input" placeholder="SOD" required="required" style="width: 49%">
								<input type="text" name="POT" class="intro_input" placeholder="POT" required="required" style="width: 49%">
								<input type="text" name="HEMO" class="intro_input" placeholder="HEMO" required="required" style="width: 49%">
								<input type="text" name="PCV" class="intro_input" placeholder="PCV" required="required" style="width: 49%">
								<input type="text" name="WC" class="intro_input" placeholder="WC" required="required" style="width: 49%">
								<input type="text" name="RC" class="intro_input" placeholder="RC" required="required" style="width: 49%">
							</div>
							<button class="button button_1 intro_button trans_200" type="submit" style="width: 49%">UPLOAD</button>
							<button class="button button_1 intro_ button trans_200" type="reset" style="width: 49%">CLEAR</button>
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