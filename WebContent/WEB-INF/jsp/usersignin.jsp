<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<div class="row">
	<div class="row">
		<h1 class="text-center">Sign in</h1>
	</div>
	<br/>
	<div class=row>
		
		<s:form class="form-horizontal" method="post" action="signin.html" commandName="objUser">
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4"><div class="alert alert-danger ${show }" role="alert"><strong>${message }</strong></div></div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-sm-4 control-label">Email</label>
			    <div class="col-sm-4">
			    	<s:input type="email" class="form-control" id="inputEmail" placeholder="Email" path="email" />
			    </div>
			    <div class="col-sm-4"></div>
			</div>
			  
			<div class="form-group">
				<label for="inputPassword" class="col-sm-4 control-label">Password</label>
			    <div class="col-sm-4">
			    	<s:input type="password" class="form-control" id="inputPassword" placeholder="Password" path="password" />
			    </div>
			    <div class="col-sm-4"></div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
			    	<button type="submit" class="btn btn-primary">Sign in</button>
			    </div>
			</div>
		</s:form>
	</div>
</div>