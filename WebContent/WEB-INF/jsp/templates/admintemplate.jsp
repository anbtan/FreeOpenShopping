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

	
	<a href="${pageContext.request.contextPath }/user.html">Home</a> | 
	<a href="${pageContext.request.contextPath }/user/aboutus.html">About Us</a> | 
	<a href="${pageContext.request.contextPath }/user/news.html">News</a>
	<br>
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	<br>
	<!-- Site footer -->
    <footer class="footer">
       <p>&copy; Company 2015</p>
    </footer>
	
</body>
</html>