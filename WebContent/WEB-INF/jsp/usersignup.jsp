<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Title -->
<div class="col-lg-12 col-sm-12">
	<span class="title">REGISTER ACCOUNT</span>
</div>

<!-- Content -->
<div class="col-lg-12 col-sm-12">
	<p> If you already have account with us, please login at the
		<a	href="${pageContext.request.contextPath }/user/login.html">login page</a>
	</p>
	
	<c:if test="${not empty message}">
		<div class="alert alert-danger">
			<strong>${message}</strong>
		</div>
	</c:if>
	
	<s:form action="signup.html" class="form-horizontal" role="form" method="post" commandName="objUser">
		<div class="panel panel-default">
			<div class="panel-body">
				<h2>Your Login Information</h2>
				<hr>
				
				<!-- Username -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span class="required">* </span>Username:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="username" value="" type="text" path="username" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="username" cssClass="text-danger"></s:errors>
					</label>
				</div>

				<!-- Password -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span class="required">*</span> Password:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="password" value="" type="password" path="password" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="password" cssClass="text-danger"></s:errors>
					</label>
				</div>

				<!-- Password confirmation -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span class="required">*</span> Password Confirm:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="confirm" value="" type="password" path="confirmPassword" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="confirmPassword" cssClass="text-danger"></s:errors>
					</label>
				</div>

			</div>
		</div>


		<div class="panel panel-default">
			<div class="panel-body">
				<h2>Your Personal Details</h2>
				<hr>
				
				<!-- First name -->
				<div class="form-group">
					<label class="col-sm-3 control-label">
						<span class="required">*</span>First Name:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="firstname" value=""	type="text" path="firstName" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="firstName" cssClass="text-danger"></s:errors>
					</label>
				</div>

				<!-- Last name -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span	class="required">*</span>Last Name:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="lastname" value="" type="text" path="lastName" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="lastName" cssClass="text-danger"></s:errors>
					</label>
				</div>
				
				<!-- Email -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span class="required">*</span>Email:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="email" value="" type="text" path="email" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="email" cssClass="text-danger"></s:errors>
					</label>
				</div>

				<!-- Phone -->
				<div class="form-group ">
					<label class="col-sm-3 control-label">
						<span class="required">*</span>Phone:
					</label>
					<div class="col-sm-6">
						<s:input class="form-control" name="phone" value="" type="text" path="phone" />
					</div>
					<label class="col-sm-3 text-left control-label" style="text-align: left !important;">
						<s:errors path="email" cssClass="text-danger"></s:errors>
					</label>
				</div>

			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-sm-12">
					<div class="form-group pull-right">
						<s:input name="agree" type="checkbox" path="chkAgree" />
						<label>
							<span class="required">*</span> I have read and
							agree to the <a class="colorbox cboxElement"
							href="${pageContext.request.contextPath }/user/policy.html"
							alt="Privacy Policy"><b>Privacy Policy</b></a>
						</label>
						<br>
						<br>
						<input value="Register"	class="btn btn-success pull-right" type="submit">
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
	</s:form>
</div>