<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<div class="row">
	<h1>Register Account</h1>
	<p>If you already have account with us, please login at the <a href="signin.html">login page</a></p>
	<div class="alert alert-danger" role="alert"><strong>${message }</strong></div>
	<s:form action="signup.html" class="form-horizontal" role="form" method="post" commandName="objUser">
		<div class="panel panel-default">
			<div class="panel-body">
				<h2>Your Personal Details</h2><hr>
				<div class="form-group">
					<label class="col-sm-3 control-label"><span class="required">*</span>First Name:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="firstname" value="" type="text" path="firstName" />
					</div>
					<label class="col-sm-3 control-label"><s:errors path="firstName" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label"><span class="required">*</span>Last Name:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="lastname" value="" type="text" path="lastName" />
					</div>
					<label class="col-sm-3 control-label"><s:errors path="lastName" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label"><span class="required">*</span>E-Mail:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="email" value="" type="text" path="email"/>
					</div>
					<label class="col-sm-3 control-label"><s:errors path="email" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label"><span class="required">*</span>Phone:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="telephone" value="" type="text" path="phone"/>
					</div>
					<label class="col-sm-3 control-label"><s:errors path="phone" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label">Fax:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="fax" value="" type="text" path="fax" />
					</div>
					<label class="col-sm-3 control-label"><s:errors path="fax" cssClass="error"></s:errors></label>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<h2>Your Address</h2><hr>
				<div class="form-group">
					<label class="col-sm-3 control-label">Company:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="company" value="" type="text" path="company"/>
					</div>
					<label class="col-sm-3 control-label"><s:errors path="company" cssClass="error"></s:errors></label>
				</div>			
		
				<div class="form-group ">
					<label class="col-sm-3 control-label"><span class="required">*</span> Address 1:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="address_1" value="" type="text" path="address1" />
					</div>
					<label class="col-sm-3 control-label"><s:errors path="address1" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label">Address 2:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="address_2" value="" type="text" path="address2" />			
					</div>
					<label class="col-sm-3 control-label"><s:errors path="address2" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label"><span class="required">*</span> City:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="city" value="" type="text" path="city"/>	
					</div>
					<label class="col-sm-3 control-label"><s:errors path="city" cssClass="error"></s:errors></label>
				</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label"><span id="postcode-required" class="required">*</span> Post Code:</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="postcode" value="" type="text" path="postCode"/>	
					</div>
					<label class="col-sm-3 control-label"><s:errors path="postCode" cssClass="error"></s:errors></label>
				</div>

			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="required">*</span> Country:</label>
				<div class="col-sm-6">
					<s:input class="form-control" name="postcode" value="" type="text" path="country"/>
				</div>
				<label class="col-sm-3 control-label"><s:errors path="country" cssClass="error"></s:errors></label>
			</div>

			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="required">*</span> Region / State:</label>
				<div class="col-sm-6">
					<s:input class="form-control" name="postcode" value="" type="text" path="region"/>
				</div>
				<label class="col-sm-3 control-label"><s:errors path="region" cssClass="error"></s:errors></label>
			</div>
  		</div>
  	</div>

	<div class="panel panel-default">
		<div class="panel-body">			
			<h2>Your Password</h2><hr>
			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="required">*</span> Password:</label>
				<div class="col-sm-6">
					<s:input class="form-control" name="password" value="" type="password" path="password"/>	
				</div>
				<label class="col-sm-3 control-label"><s:errors path="password" cssClass="error"></s:errors></label>
			</div>
			
			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="required">*</span> Password Confirm:</label>
				<div class="col-sm-6">
					<s:input class="form-control" name="confirm" value="" type="password" path="confirmPassword" />	
				</div>
				<label class="col-sm-3 control-label"><s:errors path="confirmPassword" cssClass="has-error"></s:errors></label>
			</div>

		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-body">
			<div class="col-sm-12">
				<div class="form-group pull-right">
					<s:input name="agree" type="checkbox" path="chkAgree" />
					<label><span class="required">*</span> I have read and agree to the <a class="colorbox cboxElement" href="http://demo-opencart.expresspixel.com/index.php?route=information/information/info&amp;information_id=3" alt="Privacy Policy"><b>Privacy Policy</b></a></label><br><br>
					<input value="Continue" class="btn btn-primary pull-right" type="submit">
				</div>
			</div>
		</div>
	</div>
	<br><br>
</s:form>	
</div>