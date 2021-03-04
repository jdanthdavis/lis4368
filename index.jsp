<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Justin Davis">
	<link rel="icon" href="favicon.ico">

	<title>My Online Portfolio</title>

	<%@ include file="/css/include_css.jsp" %>		
	

<!-- Carousel styles -->
<style type="text/css">
h2
{
	margin: 0;     
	color: rgb(12, 12, 12);
	padding-top: 50px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;    
}
.item
{
	background: rgb(126, 12, 82);    
	text-align: center;
	height: 300px !important;
}
.carousel
{
  margin: 20px 0px 20px 0px;
}
.bs-example
{
  margin: 20px;
}
</style>
	
</head>
<body>
	
	<%@ include file="/global/nav_global.jsp" %>	
	
	
	<div class="container">
		 <div class="starter-template">
						<div class="page-header">
						<%@ include file="/global/header.jsp" %>							
						</div>

<!-- Start Bootstrap Carousel  -->
<div class="bs-example">
	<div
      id="myCarousel"
		class="carousel"
		data-interval="4500"
		data-pause="hover"
		data-wrap="true"
		data-keyboard="true"			
		data-ride="carousel">
		
    	<!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
       <!-- Carousel items -->
        <div class="carousel-inner">

				 <div class="active item" style="background: url(img/blue_pastel.png) no-repeat center; background-size: cover;">
					<h2>Visit my Linkedin Page!</h2>
					<h3>On my Linkedin page you'll find my most recent resume along with my technical skills!</h3>
					<a href="https://www.linkedin.com/" class="btn btn-info" role="button">Linkedin</a>
					 <div class="container">
						 <div class ="carousel-caption">
						 </div>
					 </div>
				 </div>					

         <div class="item" style="background: url(img/green_pastel.png) no-repeat left center; background-size: cover;">
                <h2>Visit my Bitbucket to see my latest work!</h2>
				<h3>On my Bitbucket you'll see my latest updates to my Adv. Mobile App and Adv. Web App repos!</h3>
				<a href="https://bitbucket.org/jd19z" class="btn btn-info" role="button">Bitbucket</a>
				<div class="carousel-caption">					
                </div>
            </div>

         <div class="item" style="background: url(img/pink_pastel.png) no-repeat left center; background-size: cover;">
			<h2>Check out my Career Portfolio!</h2>
			<h3>Here you can get to know a bit more about me and my career!</h3>
			<a href="https://justin-career-portfolio.webflow.io/" class="btn btn-info" role="button">Portfolio</a>
			<div class="carousel-caption">					
			</div>
            </div>

        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
<!-- End Bootstrap Carousel  -->

 	<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
</div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>
	
</body>
</html>
