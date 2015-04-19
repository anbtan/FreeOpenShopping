<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    
<%-- <div class="container-fluid" style="width: 30%; margin-top: 10%;">
	<h1 style="text-align: center;">LOGIN</h1>
	<br>
	<s:form class="form-horizontal" method="post" commandName="user" action="admin.html">
  		<div class="form-group">
    		<label for="inputUsername" class="col-sm-2 control-label">Username</label>
    		<div class="col-sm-10">
      			<s:input path="username" type="text" class="form-control" id="inputUsername" placeholder="Enter your username" />
    		</div>
  		</div>
  		
  		<div class="form-group">
    		<label for="inputPassword" class="col-sm-2 control-label">Password</label>
    		<div class="col-sm-10">
      			<s:input path="password" type="password" class="form-control" id="inputPassword" placeholder="Enter your password" />
    		</div>
  		</div>
  		
  		<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">
      			<button type="submit" class="btn btn-primary">Sign in</button>
    		</div>
  		</div>
	</s:form>
</div> --%>

<!--login modal-->
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
	  <div class="modal-content">
	      <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	          <h1 class="text-center">Login</h1>
	      </div>
	      <div class="modal-body">
	          <s:form class="form col-md-12 center-block" method="post" commandName="objUser" action="admin.html">
	            <div class="form-group">
	              <s:input type="text" class="form-control input-lg" placeholder="Email" path="email" />
	            </div>
	            <div class="form-group">
	              <s:input type="password" class="form-control input-lg" placeholder="Password" path="password"/>
	            </div>
	            <div class="form-group">
	              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
	            </div>
	          </s:form>
	      </div>
	      <div class="modal-footer" style="border-width: 0px;">
	          <div class="col-md-12">
			  </div>	
	      </div>
	  </div>
  </div>
</div>
