<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.Date" %>
<%@ page import="utilisateurs.Abonne" %>

<%
	Date today = new Date();
	String login = request.getParameter("login");
	String pass = request.getParameter("pass");
	Abonne ab = new Abonne(login,pass);
%>

<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta charec set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- Page Title -->
        <title>Media-Take</title>		
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <meta name="author" content="Muhammad Morshed">
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Google Font -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

		<!-- CSS
		================================================== -->
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="sources/css/font-awesome.min.css">
		<!-- Twitter Bootstrap css -->
        <link rel="stylesheet" href="sources/css/bootstrap.min.css">
		<!-- jquery.fancybox  -->
        <link rel="stylesheet" href="sources/css/jquery.fancybox.css">
		<!-- animate -->
        <link rel="stylesheet" href="sources/css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="sources/css/main.css">
		<!-- media-queries -->
        <link rel="stylesheet" href="sources/css/media-queries.css">

		<!-- Modernizer Script for old Browsers -->
        <script src="sources/js/modernizr-2.6.2.min.js"></script>

    </head>
	
    <body id="body">
		<!-- preloader -->
		<div id="preloader">
			<img src="sources/img/preloader.gif" alt="Preloader">
		</div>
		<!-- end preloader -->

        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top navbar">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-bars fa-2x"></i>
                    </button>
					<!-- /responsive nav button -->
					<!-- logo -->
                    <a class="navbar-brand" href="#body">
						<h3 id="logo">
							<i>Media-Take</i>
						</h3>
					</a>
					<!-- /logo -->
                </div>
				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li><a href="#slider">Home</a></li>
                        <li><a href="#emprunter">Emprunter</a></li>
                        <li><a href="#retourner">Retourner</a></li>
                        <li><a href="#ajouter">Ajouter un document</a></li>
                        <li><a id="deconnect" href="">Se déconnecter</a></li>
                    </ul>
                </nav>
				<!-- /main nav -->
            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		
        <!--
        Home Slider
        ==================================== -->
		<section id="slider">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators bullet -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				</ol>
				<!-- End Indicators bullet -->				
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<!-- single slide -->
					<div class="item active" style="background-image: url(sources/img/banner.jpg);">
						<div class="carousel-caption">
							<h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated">Bienvenue à<span> Media-Take </span>!</h2>
							<h3 data-wow-duration="1000ms" class="wow slideInLeft animated"><span class="color">/Empruntez</span> ce que vous voulez</h3>
							<p data-wow-duration="1000ms" class="wow slideInRight animated">Une large gamme de choix</p>
						</div>
					</div>
					<!-- end single slide -->
					
					<!-- single slide -->
					<div class="item" style="background-image: url(sources/img/banner.jpg);">
						<div class="carousel-caption">
							<h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated">Une médiathèque<span> sur mesure </span>!</h2>
							<h3 data-wow-duration="500ms" class="wow slideInLeft animated"><span class="color">/Documents :</span> CD, DVD, Livres, Mangas, etc.</h3>
							<p data-wow-duration="500ms" class="wow slideInRight animated">Nous sommes à votre disposition</p>
						</div>
					</div>
					<!-- end single slide -->
				</div>
				<!-- End Wrapper for slides -->
			</div>
		</section>
        <!--
        End Home SliderEnd
        ==================================== -->
		
		
        <!--
        Emprunter
        ==================================== -->
		<section id="emprunter" class="emprunter">
			<div class="container">
				<div class="row">
				
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>emprunter</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>

					<!-- service item -->
					<div class="col-md-4 wow fadeInLeft" data-wow-duration="500ms">
						<div class="service-item">
							<div class="service-icon">
								<i class="fa fa-github fa-2x"></i>
							</div>
							
							<div class="service-desc">
								<h3>Branding</h3>
								<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
					
					<!-- service item -->
					<div class="col-md-4 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
						<div class="service-item">
							<div class="service-icon">
								<i class="fa fa-pencil fa-2x"></i>
							</div>
							
							<div class="service-desc">
								<h3>Development</h3>
								<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
					
					<!-- service item -->
					<div class="col-md-4 wow fadeInRight" data-wow-duration="500ms"  data-wow-delay="900ms">
						<div class="service-item">
							<div class="service-icon">
								<i class="fa fa-bullhorn fa-2x"></i>
							</div>
							
							<div class="service-desc">
								<h3>Consulting</h3>
								<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
							</div>
						</div>
					</div>
					<!-- end service item -->
						
				</div>
			</div>
		</section>
        <!--
        End Emprunter
        ==================================== -->
		
		
        <!--
        Retourner
        ==================================== -->
		<section id="retourner" class="retourner clearfix">
			<div class="container">
				<div class="row">
				
					<div class="sec-title text-center">
						<h2>retourner</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					
					<div class="sec-sub-title text-center">
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
					</div>
					
					<div class="work-filter wow fadeInRight animated" data-wow-duration="500ms">
						<ul class="text-center">
							<li><a href="javascript:;" data-filter="all" class="active filter">All</a></li>
							<li><a href="javascript:;" data-filter=".branding" class="filter">Branding</a></li>
							<li><a href="javascript:;" data-filter=".web" class="filter">web</a></li>
							<li><a href="javascript:;" data-filter=".logo-design" class="filter">logo design</a></li>
							<li><a href="javascript:;" data-filter=".photography" class="filter">photography</a></li>
						</ul>
					</div>
					
				</div>
			</div>
			
			<div class="project-wrapper">
			
				<figure class="mix work-item branding">
					<img src="sources/img/works/item-1.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-1.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item web">
					<img src="sources/img/works/item-2.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-2.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item logo-design">
					<img src="sources/img/works/item-3.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-3.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item photography">
					<img src="sources/img/works/item-4.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-4.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
			
				<figure class="mix work-item branding">
					<img src="sources/img/works/item-5.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-5.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item web">
					<img src="sources/img/works/item-6.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-6.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item logo-design">
					<img src="sources/img/works/item-7.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-7.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
				<figure class="mix work-item photography">
					<img src="sources/img/works/item-8.jpg" alt="">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="Write Your Image Caption Here" href="sources/img/works/item-8.jpg"><i class="fa fa-eye fa-lg"></i></a>
						<h4>Labore et dolore magnam</h4>
						<p>Photography</p>
					</figcaption>
				</figure>
				
			</div>
		

		</section>
        <!--
        End Retourner
        ==================================== -->
		
        <!--
        Ajouter
        ==================================== -->
		<section id="ajouter" class="ajouter">
			<div class="container">
				<div class="row">
		
					<div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
						<h2>Ajouter</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					
					<div class="sec-sub-title text-center wow fadeInRight animated" data-wow-duration="500ms">
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
					</div>

					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
						<div class="member-thumb">
							<img src="sources/img/team/member-1.png" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>voluptatem quia voluptas </h5>
								<p>sit aspernatur aut odit aut fugit,</p>
								<ul class="social-links text-center">
									<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								</ul>
							</figcaption>
						</div>
						<h4>John Filmr Doe</h4>
						<span>Managing Director</span>
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class="member-thumb">
							<img src="sources/img/team/member-2.png" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>voluptatem quia voluptas </h5>
								<p>sit aspernatur aut odit aut fugit,</p>
								<ul class="social-links text-center">
									<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								</ul>
							</figcaption>
						</div>
						<h4>Martin Matrone</h4>
						<span>Lead Developer</span>
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="member-thumb">
							<img src="sources/img/team/member-3.png" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>voluptatem quia voluptas </h5>
								<p>sit aspernatur aut odit aut fugit,</p>
								<ul class="social-links text-center">
									<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								</ul>
							</figcaption>
						</div>
						<h4>Steve Flaulkin</h4>
						<span>Sr. UI Designer</span>
					</figure>
					<!-- end single member -->
					
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
						<div class="member-thumb">
							<img src="sources/img/team/member-1.png" alt="Team Member" class="img-responsive">
							<figcaption class="overlay">
								<h5>voluptatem quia voluptas </h5>
								<p>sit aspernatur aut odit aut fugit,</p>
								<ul class="social-links text-center">
									<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								</ul>
							</figcaption>
						</div>
						<h4>John Filmr Doe</h4>
						<span>Managing Director</span>
					</figure>
					<!-- end single member -->
					
				</div>
			</div>
		</section>
        <!--
        End Ajouter
        ==================================== -->
		
		<footer id="footer" class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<p class="copyright text-center">
							Copyright © 2015 <a href="http://themefisher.com/">Themefisher</a>. All rights reserved. Designed & developed by <a href="http://themefisher.com/">Themefisher</a><br>
							Modified & personalized by Damien Michaudel and Thomas Lesdel
						</p>
					</div>
				</div>
			</div>
		</footer>
		
		<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

		<!-- Essential jQuery Plugins
		================================================== -->
		<!-- Main jQuery -->
        <script src="sources/js/jquery-1.11.1.min.js"></script>
		<!-- Single Page Nav -->
        <script src="sources/js/jquery.singlePageNav.min.js"></script>
		<!-- Twitter Bootstrap -->
        <script src="sources/js/bootstrap.min.js"></script>
		<!-- jquery.fancybox.pack -->
        <script src="sources/js/jquery.fancybox.pack.js"></script>
		<!-- jquery.mixitup.min -->
        <script src="sources/js/jquery.mixitup.min.js"></script>
		<!-- jquery.parallax -->
        <script src="sources/js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.countTo -->
        <script src="sources/js/jquery-countTo.js"></script>
		<!-- jquery.appear -->
        <script src="sources/js/jquery.appear.js"></script>
		<!-- jquery easing -->
        <script src="sources/js/jquery.easing.min.js"></script>
		<!-- jquery easing -->
        <script src="sources/js/wow.min.js"></script>
		<script>
			var wow = new WOW ({
				boxClass:     'wow',      // animated element css class (default is wow)
				animateClass: 'animated', // animation css class (default is animated)
				offset:       120,          // distance to the element when triggering the animation (default is 0)
				mobile:       false,       // trigger animations on mobile devices (default is true)
				live:         true        // act on asynchronously loaded content (default is true)
			  }
			);
			wow.init();
		</script> 
		<!-- Custom Functions -->
        <script src="sources/js/custom.js"></script>
    </body>
</html>
