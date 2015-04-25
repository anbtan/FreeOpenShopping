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
				<!-- Logo -->
				<div class="col-md-4 col-xs-4 logo">
	            	<a href="${pageContext.request.contextPath }/user.html">
	                	<img src="${pageContext.request.contextPath}/resources/images/logo.png" title="Your Store" alt="Your Store">
	               	</a>
            	</div>
            	<!-- End Logo -->
				<!-- Search -->
				<div class="col-lg-5 col-md-5 col-sm-7 col-xs-12">
	            	<div class="well">
	                    <form action="">
	                        <div class="input-group">
	                            <input type="text" class="form-control input-search" placeholder="Enter something to search">
	                            <span class="input-group-btn">
	                                <button class="btn btn-default no-border-left" type="submit"><i class="fa fa-search"></i></button>
	                            </span>
	                        </div>
	                    </form>
	                </div>
	            </div>
	            <!-- End search -->
	            <!-- Shopping cart -->
	            <div class="col-lg-3 col-md-4 col-sm-5">
	                <div class="well">
	                    <div class="btn-group btn-group-cart">
	                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
	                            <span class="pull-left"><i class="fa fa-shopping-cart icon-cart"></i></span>
	                            <span class="pull-left">Shopping Cart: 2 item(s)</span>
	                            <span class="pull-right"><i class="fa fa-caret-down"></i></span>
	                        </button>
	                        <ul class="dropdown-menu cart-content" role="menu">
                                <li>
                                    <a href="detail.html">
                                        <b>Penn State College T-Shirt</b>
                                        <span>x1 $528.96</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="detail.html">
                                        <b>Live Nation ACDC Gray T-Shirt</b>
                                        <span>x1 $428.96</span>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="cart.html">Total: $957.92</a></li>
                            </ul>
	                    </div>
	                </div>
	            </div>
			</div>
			<div class="row">
				<div class="col-md-12 col-xs-12">
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
	<nav class="navbar navbar-inverse primary" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath }/user.html">Home</a></li>
					<li><a href="${pageContext.request.contextPath }/user/aboutus.html">About Us</a></li>
       				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Policy Privacy</a></li>
       				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Terms and Conditions</a></li>
       				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Shipping Methods</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navigation -->
    <!-- Content -->
	<div class="container main-container">
		<div class="row">
	<!-- Slider -->
	<div class="col-lg-12 col-md-12">
		<div class="slider">
	       	<ul class="bxslider">
	       		<li style="float: left; list-style: none; position: relative;">
	               	<a href="index.html">
	                   	<img src="${pageContext.request.contextPath}/resources/images/banner_slider-3.jpg" alt="">
	               	</a>
	           	</li>
	           	<li style="float: left; list-style: none; position: relative;">
	               	<a href="index.html">
	                   	<img src="${pageContext.request.contextPath}/resources/images/banner_slider-3.jpg" alt="">
	               	</a>
	           	</li>
	           	<li style="float: left; list-style: none; position: relative;">
	               	<a href="index.html">
	                   	<img src="${pageContext.request.contextPath}/resources/images/banner_slider-3.jpg" alt="">
	               	</a>
	           	</li>
	           	<li style="float: left; list-style: none; position: relative;">
	               	<a href="index.html">
	                   	<img src="${pageContext.request.contextPath}/resources/images/banner_slider-3.jpg" alt="">
	               	</a>
	           	</li>
	       		<li style="float: left; list-style: none; position: relative;">
	               	<a href="index.html">
	                    <img src="${pageContext.request.contextPath}/resources/images/banner_slider-3.jpg" alt="">
	                </a>
	   	        </li>
	   	    </ul>	    		
		</div>
	</div>
	<!-- End Slider -->
</div>

<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-12">
  		<!-- Categories -->
  		<div class="col-lg-12 col-md-12 col-sm-6">
   		<div class="no-padding">
       		<span class="title">CATEGORIES</span>
       	</div>

		<div class="panel-group panel-categories" id="accordion">
			<div class="panel panel-default">
			    <div class="panel-heading have-sub">
			        <h4 class="panel-title">
			        	<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Cras justo odio</a>
			        <i class="fa fa-caret-right"></i></h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse">
			        <div class="list-group">
			            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
			            <a href="#" class="list-group-item">Morbi leo risus</a>
			        </div>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Dapibus ac facilisis in</a>
			        </h4>
			    </div>
			    <div class="panel-heading have-sub">
			        <h4 class="panel-title">
			        	<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Porta ac consectetur ac</a>
			        <i class="fa fa-caret-right"></i></h4>
			    </div>
			    <div id="collapseTwo" class="panel-collapse collapse">
			        <div class="list-group">
			            <a href="#" class="list-group-item">Vestibulum at eros</a>
			            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
			        </div>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Vestibulum at eros</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Porta ac consectetur ac</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Cras justo odio</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Dapibus ac facilisis in</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Porta ac consectetur ac</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Vestibulum at eros</a>
			        </h4>
			    </div>
			    <div class="panel-heading">
			        <h4 class="panel-title">
			        	<a href="#">Porta ac consectetur ac</a>
			        </h4>
			    </div>
			</div>
		</div>
	</div>
	<!-- End Categories -->

	<!-- Best Seller -->
	<div class="col-lg-12 col-md-12 col-sm-6">
		<div class="no-padding">
        	<span class="title">BEST SELLER</span>
		</div>
		<div class="hero-feature">
	        <div class="thumbnail text-center">
	        	<a href="detail.html" class="link-p" style="overflow: hidden; position: relative;">
	            	<img src="${pageContext.request.contextPath}/resources/images/product-10.jpg" alt="" style="position: absolute; width: 250px; height: auto; max-width: none; max-height: none; left: -13px; top: 0px;">
	        	</a>
	  	        <div class="caption prod-caption">
			        <h4><a href="detail.html">Penn State College T-Shirt</a></h4>
		            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, minima!</p>
		            <p></p>
		            <div class="btn-group">
		            	<a href="#" class="btn btn-default">$ 528.96</a>
		                <a href="#" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a>
		            </div>
		            <p></p>
		        </div>
	        </div>
		</div>
        <div class="hero-feature hidden-sm">
            <div class="thumbnail text-center">
            	<a href="detail.html" class="link-p" style="overflow: hidden; position: relative;">
                	<img src="${pageContext.request.contextPath}/resources/images/product-10.jpg" alt="" style="position: absolute; width: 280px; height: auto; max-width: none; max-height: none; left: -28px; top: 0px;">
            	</a>
                <div class="caption prod-caption">
                    <h4><a href="detail.html">Ohio State College T-Shirt</a></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, minima!</p>
                    <p>
                    	</p><div class="btn-group">
                     	<a href="#" class="btn btn-default">$ 924.25</a>
                     	<a href="#" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy</a>
                    	</div>
                    <p></p>
                </div>
            </div>
        </div>
	</div>
	<!-- End Best Seller -->
</div>
	<div class="clearfix visible-sm"></div>
<!-- Featured -->
<div class="col-lg-9 col-md-9 col-sm-12">
	
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
</div>
</div>
	<!-- End Content -->
	<!-- Footer -->
	<footer>
    	<div class="container">
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Information</h4>
        			<ul>
        				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">About Us</a></li>
        				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Policy Privacy</a></li>
        				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Terms and Conditions</a></li>
        				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Shipping Methods</a></li>
        			</ul>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-3 col-sm-6">
        		<div class="column">
        			<h4>Customer Service</h4>
        			<ul>
        				<li><a href="${pageContext.request.contextPath }/user/aboutus.html">Contact Us</a></li>
        				<li><a href="#">YM: cs_</a></li>
        				<li><a href="#">Phone: +840919369089</a></li>
        				<li><a href="#">Email: anbtan@gmail.com</a></li>
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
        	Copyright © 2015 Free Open Shopping All right reserved
        </div>
    </footer>
    <!-- End Footer -->
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery.blImageCenter.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/js/mimity.js"></script>

</body>
</html>