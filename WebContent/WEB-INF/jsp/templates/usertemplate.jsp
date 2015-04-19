<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title }</title>
<link type="text/css" rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
</head>
<body>
	<div class="container">
		<div id="header" class="row">
			<div class="col-md-4 col-xs-4 logo"></div>
			<div class="col-md-8 col-xs-8">
				<div class="row" style="height: 75px;">
				</div>
				<br></br>
				<div class="row">
					<div class="pull-right">
						<a href="${pageContext.request.contextPath }/user.html">Home  |</a> 
						<a href="${pageContext.request.contextPath }/user/aboutus.html">About Us  |</a> 
						<a href="${pageContext.request.contextPath }/user/news.html">News</a>
						<a href="${pageContext.request.contextPath }/user/signup.html">Sign up</a>
						<a href="${pageContext.request.contextPath }/user/signin.html">Sign in</a>
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
		<div id="footer" class="row footer">
			<footer>
				<hr></hr>
				<div class="row well"></div>
			<p>&copy; Company 2015</p>
			</footer>
		</div>
		
		
	</div>	
</body>
</html>