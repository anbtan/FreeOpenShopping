<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/stylesheet.css"/>
<!-- Custom Fonts -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" >
<!-- Custom Fonts -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css" >

</head>
<body>
	<!-- Header -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-4 logo">
	            	<a href="${pageContext.request.contextPath }/user.html">
	                	<img src="${pageContext.request.contextPath}/resources/images/logo.png" title="Your Store" alt="Your Store">
	               	</a>
            	</div>
				<div class="col-md-8 col-xs-8">
					<div class="row" style="height: 75px;"></div>
					<br></br>
					<div class="row">
						<div class="links pull-right">
							<a href="${pageContext.request.contextPath }/user/signup.html">Sign up</a>
							<a href="${pageContext.request.contextPath }/user/signin.html">Sign in</a>
							<a href="${pageContext.request.contextPath }/user.html">Wish List(0)</a> 
							<a href="${pageContext.request.contextPath }/user/aboutus.html">Shopping Cart</a> 
							<a href="${pageContext.request.contextPath }/user/news.html">Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End Header -->
	<!-- Navigation -->
	<nav class="navbar navbar-inverse" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath }/user.html">Home</a></li>
					<li><a href="${pageContext.request.contextPath }/user/aboutus.html">About Us</a></li>
					<li><a href="${pageContext.request.contextPath }/user/news.html">News</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navigation -->
    <!-- Content -->
	<div class="container main-container">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>	
	<!-- End Content -->
	<!-- Footer -->
	<footer>
    	<div class="container">
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Information</h4>
        			<ul>
        				<li><a href="about.html">About Us</a></li>
        				<li><a href="typography.html">Policy Privacy</a></li>
        				<li><a href="typography.html">Terms and Conditions</a></li>
        				<li><a href="typography.html">Shipping Methods</a></li>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Categories</h4>
        			<ul>
        				<li><a href="catalogue.html">Cras justo odio</a></li>
        				<li><a href="catalogue.html">Dapibus ac facilisis in</a></li>
        				<li><a href="catalogue.html">Morbi leo risus</a></li>
        				<li><a href="catalogue.html">Porta ac consectetur ac</a></li>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Customer Service</h4>
        			<ul>
        				<li><a href="contact.html">Contact Us</a></li>
        				<li><a href="#">YM: cs_</a></li>
        				<li><a href="#">Phone: +6281234567891</a></li>
        				<li><a href="#">Email: cs.domain@domain.tld</a></li>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Follow Us</h4>
        			<ul class="social">
        				<li><a href="#">Google Plus</a></li>
        				<li><a href="#">Facebook</a></li>
        				<li><a href="#">Twitter</a></li>
        				<li><a href="#">RSS Feed</a></li>
        			</ul>
        		</div>
        	</div>
        </div>
        <div class="navbar-inverse text-center copyright">
        	Copyright © 2015 Mimity All right reserved
        </div>
    </footer>
    <!-- End Footer -->
</body>
</html>