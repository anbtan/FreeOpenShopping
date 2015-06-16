<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-lg-12 col-sm-12">
	<span class="title">SIGN IN</span>
</div>
<div class="col-lg-12 col-sm-12 hero-feature" style="height: 80%">
	<div class=row>
		<c:url var="loginUrl" value="/j_spring_security_check"></c:url>
		<form class="form-horizontal" action="${loginUrl}" method="POST">
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<c:if test="${not empty error}">
						<div class="alert alert-danger">
							<strong>${error}</strong>
						</div>
					</c:if>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-sm-4 control-label">Username</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputEmail"
						placeholder="Enter your username" name='username' />
				</div>
				<div class="col-sm-4"></div>
			</div>

			<div class="form-group">
				<label for="inputPassword" class="col-sm-4 control-label">Password</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="inputPassword"
						placeholder="Enter your password" name="password" />
				</div>
				<div class="col-sm-4"></div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-success" name="submit">Sign
						in</button>
				</div>
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
</div>