<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Login</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #dbd5f2">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center">Login</h5>
						<form>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1"  required="required">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button><br>
								<a href="register.jsp">Create Account</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>