<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    
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
