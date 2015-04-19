<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/stylesheet.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme.css"/>
</head>
<body>
	<div class="container">
		<div id="header" class="row">
			<div class="col-md-4 col-xs-4 logo">
            	<a href="${pageContext.request.contextPath }/user.html">
                	<img src="${pageContext.request.contextPath}/resources/images/logo.png" title="Your Store" alt="Your Store">
               	</a>
            </div>
			<div class="col-md-8 col-xs-8">
				<div class="row" style="height: 75px;">
				</div>
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
		<div id="navbar" class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-default" role="navigation">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath }/user.html">Home</a></li>
						<li><a href="${pageContext.request.contextPath }/user/aboutus.html">About Us</a></li>
						<li><a href="${pageContext.request.contextPath }/user/news.html">News</a></li>
					</ul>
				</nav> 
			</div>
		</div>
		<div id="content" class="row">
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
		<div class="row footer">
			<footer>
				<hr></hr>
				<div class="row well no_margin_left">
            		<div class="col-sm-3 col-xs-6">
                		<div class="column">
		                    <h4>Information</h4>
                    		<ul>            
		                        <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/information&amp;information_id=4">About Us</a></li>
		                        <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/information&amp;information_id=6">Delivery Information</a></li>
		                        <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/information&amp;information_id=3">Privacy Policy</a></li>
		                        <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/information&amp;information_id=5">Terms &amp; Conditions</a></li>
		                    </ul>
        		        </div>
		            </div>
            
		            <div class="col-sm-3 col-xs-6">
		                <h4>Customer Service</h4>
		                <ul>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/contact">Contact Us</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/return/insert">Returns</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=information/sitemap">Site Map</a></li>
		                </ul>
		            </div>
            
            		<div class="col-xs-12 visible-xs"></div>
            
		            <div class="col-sm-3 col-xs-6">
		                <h4>Extras</h4>
		                <ul>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=product/manufacturer">Brands</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/voucher">Gift Vouchers</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=affiliate/account">Affiliates</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=product/special">Specials</a></li>
		                </ul>
		            </div>
            
		            <div class="col-sm-2 col-xs-6">
		                <h4>My Account</h4>
		                <ul>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/account">My Account</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/order">Order History</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/wishlist">Wish List</a></li>
		                    <li><a href="http://demo-opencart.expresspixel.com/index.php?route=account/newsletter">Newsletter</a></li>
		                </ul>
		            </div>
            
        </div>
			<p>&copy; Company 2015</p>
			</footer>
		</div>
		
		
	</div>	
</body>
</html>