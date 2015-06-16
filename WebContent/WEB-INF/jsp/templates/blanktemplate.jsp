<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/stylesheet.css" />
<!-- Custom Fonts -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<!-- Custom Fonts -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.bxslider.css">

</head>
<body>
	<!-- Header -->
	<header>
		<div class="container">
			<!-- Link menu -->
			<div class="col-md-12 col-xs-12">
				<!-- Link menu -->
				<div class="nav-header-link pull-right">
					<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">
							<li>@${pageContext.request.userPrincipal.name}</li>
					    	
						    <li>
						    	<c:url var="logoutAction" value="/j_spring_security_logout"></c:url>
						    	<form action="${logoutAction}" method="post">
									<button type="submit" class="btn btn-link">Logout</button>
									</form>
								</li>
						        
						    
						</c:when>
						<c:otherwise>
							<li><a
							href="${pageContext.request.contextPath }/user/login.html"><span
								class="fa fa-sign-in"></span> Sign in</a></li>
							<li><a
						href="${pageContext.request.contextPath }/user/signup.html"><span
							class="fa fa-user"></span> Sign up</a></li>			
						</c:otherwise>
					</c:choose>
					
					
					
					<li><a href="${pageContext.request.contextPath }/user/wishlist.html"><span
							class="fa fa-heart"></span> Wish List</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/shoppingcart.html"><span
							class="fa fa-shopping-cart"></span> Shopping Cart</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/checkout.html"><span
							class="fa fa-money"></span> Checkout</a></li>
				</div>
				<!-- End Menu Link -->

			</div>
			<!-- End link menu -->
			<!-- Logo -->
			<div class="col-lg-4 col-md-3 hidden-sm hidden-xs">
				<div class="well logo">
					<a href="${pageContext.request.contextPath }/user/index.html">
						Free <span>Open Shopping</span>
					</a>
					<div>Bring everything to your house within one music node</div>
				</div>
			</div>
			<!-- End Logo -->
			<!-- Search -->
			<div class="col-lg-5 col-md-5 col-sm-7 col-xs-12">
				<div class="well">
					<form action="">
						<div class="input-group">
							<input type="text" class="form-control input-search"
								placeholder="Enter something to search"> <span
								class="input-group-btn">
								<button class="btn btn-default no-border-left" type="submit">
									<i class="fa fa-search"></i> Search
								</button>
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
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							<span class="pull-left"><i
								class="fa fa-shopping-cart icon-cart"></i></span> <span
								class="pull-left">Shopping Cart: 2 item(s)</span> <span
								class="pull-right"><i class="fa fa-caret-down"></i></span>
						</button>
						<ul class="dropdown-menu cart-content" role="menu">
							<li><a href="detail.html"> <b>Penn State College
										T-Shirt</b> <span>x1 $528.96</span>
							</a></li>
							<li><a href="detail.html"> <b>Live Nation ACDC Gray
										T-Shirt</b> <span>x1 $428.96</span>
							</a></li>
							<li class="divider"></li>
							<li><a href="cart.html">Total: $957.92</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- End Shopping Cart -->
		</div>

	</header>
	<!-- End Header -->

	<!-- Navigation Bar -->
	<nav class="navbar navbar-inverse primary" role="navigation">
		<div class="container">
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a
						href="${pageContext.request.contextPath }/user/index.html">Home</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/aboutus.html">About
							Us</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/policy.html">Policy
							Privacy</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/term.html">Terms
							and Conditions</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/shipping.html">Shipping
							Methods</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/contactus.html">Contact
							Us</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navigation Bar -->
	<!-- Content -->
	<div class="container main-container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
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
						<li><a
							href="${pageContext.request.contextPath }/user/aboutus.html">About
								Us</a></li>
						<li><a
							href="${pageContext.request.contextPath }/user/policy.html">Policy
								Privacy</a></li>
						<li><a
							href="${pageContext.request.contextPath }/user/term.html">Terms
								and Conditions</a></li>
						<li><a
							href="${pageContext.request.contextPath }/user/shipping.html">Shipping
								Methods</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6">
				<div class="column">
					<h4>Customer Service</h4>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/user/contactus.html">Contact
								Us</a></li>
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
						<li><a href="www.plus.google.com" target="blank">Google
								Plus</a></li>
						<li><a href="www.facebook.com">Facebook</a></li>
						<li><a href="www.tweeter.com">Twitter</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="navbar-inverse text-center copyright">Copyright ©
			2015 Free Open Shopping All right reserved</div>
	</footer>
	<!-- End Footer -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.blImageCenter.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/mimity.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.touchspin.js"></script>

</body>