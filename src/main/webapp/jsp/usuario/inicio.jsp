<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <%@page import="net.daw.helper.AppInformationHelper"%>
    <%@page import="net.daw.helper.EstadoHelper"%>

<title>Fashion_Spring Bootstarp Website Template | Home :: w3layouts</title>
<link href="css/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!-- Add fancyBox main JS and CSS files -->
		<script src="js/js/jquery.magnific-popup.js" type="text/javascript"></script>
		<link href="css/css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
</head>
<body>
	<div class="header_top">	
	  <div class="container">
		  <div class="logo">
			 <a href="index.html"><img src="css/images/logo.png" alt=""></a>
		  </div>
		  <div class="cssmenu">
				<ul id="nav">
					 <li class="current"><a href="#section-1">Inicio</a></li>
					 <li><a href="#section-2">Colegio</a></li>
					 <li><a href="#section-3">Secretaria</a></li>					 					 
				  <li><a href="#section-5">Contacto</a></li>
          <li><a href="#section-4">Entrar</a></li>
				</ul>
		    </div>
			<div class="clearfix"> </div>
	  	 </div>
	 </div>
	 <div class="wmuSlider example1 section" id="section-1">
			   <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   <div class="banner-wrap">
			   	   	 <h1>Bienvenido al</h1>
					 <span></span>
					 <h2> 2015</h2>
				   </div>
				</article>
				<article style="position: absolute; width: 100%; opacity: 0;"> 
				   <div class="banner-wrap">
			   	   	 <h1>Estamos abiertos</h1>
					 <span></span>
					 <h2>Desde 2015</h2>
				   </div>
				</article>
				<article style="position: absolute; width: 100%; opacity: 0;"> 
				   <div class="banner-wrap">
			   	   	 <h1></h1>
					 <span></span>
					 <h2>Ven y conocenos 2015</h2>
				   </div>
				</article>
				<ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="">2</a></li>
                </ul>
		  </div>
          <script src="js/js/jquery.wmuSlider.js"></script> 
			<script>
       			$('.example1').wmuSlider();         
   		    </script> 
   	<div class="main">
   	   	  <div class="about section" id="section-2">
   	   	    <div class="container">
   	   	  	 <div class="col-md-8 about_left">
   	   	  	 	<h3>About Fashion</h3>
   	   	  	 	<p class="m_1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet</p>
   	   	  	    <p class="m_2">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum</p>
   	   	  	    	<a href="#" class="btn1 btn-1 btn1-1b">Read More</a>
   	   	  	 </div>
   	   	  	 <div class="col-md-4 about_right">
   	   	  	 	<img src="css/images/p13.jpg" alt=""/>
   	   	  	 </div>
   	   	  	</div>
   	   	 </div>
   	   	 <div class="portfolio section" id="section-3">
   	   	   <ul class="portfolio_grids">
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p11.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Latest</h3>
                        <h4>Fashion</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		                     <div id="small-dialog1" class="mfp-hide">
							   <div class="pop_up1">
							   	 <h3>Duis autem vel </h3>
								 <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie.</p>
								 <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie.</p>
								</div>
							 </div>
                        </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p12.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Latest</h3>
                        <h4>Fashion</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p13.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Educacion de </h3>
                        <h4>Calidad</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p14.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Alegria en </h3>
                        <h4>los alumnos</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p13.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Becas de </h3>
                        <h4>Comedor</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<div class="clearfix"></div>
	  	   </ul>
	  	   <ul class="portfolio_grids">
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p16.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Profesionales</h3>
                        <h4>cualificados</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p17.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Cuidadado de</h3>
                        <h4>los niños</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p18.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Latest</h3>
                        <h4>Fashion</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p19.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Latest</h3>
                        <h4>Fashion</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	    <li>
	  	  		<div class="view view-fifth">
                   <img src="css/images/p20.jpg" class="img-responsive" alt=""/>
                    <div class="mask">
                      <div class="mask1">
                        <h3>Latest</h3>
                        <h4>Fashion</h4>
                         <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info">Next</div></a>
		              </div>
                     </div>
                  </div>
	  	  	</li>
	  	  	<div class="clearfix"></div>
	  	  </ul>
	  	  
		  </div>
		  
     </div>	
     <div class="contact section" id="section-5">
     	<div class="container">
     		<h3 class="head">Contacto</h3>
     		<div class="row">
     			<div class="col-md-6">
     				<ul class="list">
     					<li class="list1">
     						<i class="icon1"> </i><p class="address"><span class="phone">Phone :</span> 650)253-0000</p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1">
     						<i class="icon2"> </i><p class="address"><span class="phone">Email :</span><span class="email"><a href="j1p9n8n6@hotmail.com"> j1p9n8n6@hotmail.com</a></span></p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1">
     						<i class="icon3"> </i><p class="address"><span class="phone">Fax :</span> 650)253-0000</p>
     						<div class="clearfix"> </div>
     					</li>
     					<li class="list1 last">
     						<i class="icon4"> </i><p class="address"><span class="phone">Address :</span> Mariana Pineda Nº99 Pº18</p>
     						<div class="clearfix"> </div>
     					</li>
     				</ul>
     			</div>
     			
     		</div>
     	</div>
     </div> 
     <div class="footer_bottom">
         <div class="container">
           	 <p class="copy">&copy; Proyecto Final 2015 <a href="http://w3layouts.com" target="_blank"> </a></p>
           	 <ul class="social">
				<li><a href=""> <i class="fb"> </i> </a></li>
				<li><a href=""><i class="rss"> </i> </a></li>
				<li><a href=""><i class="tw"> </i> </a></li>
			</ul>
		 </div>
     </div> 
    <script src="js/js/jquery.scrollTo.js"></script>
	<script src="js/js/jquery.nav.js"></script>
	<script>
	$(document).ready(function() {
		$('#nav').onePageNav({
			begin: function() {
			console.log('start')
			},
			end: function() {
			console.log('stop')
			}
		});
	});
	</script>
</body>
</html>		