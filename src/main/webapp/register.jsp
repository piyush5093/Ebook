<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@page isELIgnored = "false" %>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.card {
    border: none; 
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15); 
    border-radius: 10px;
    transition: box-shadow 0.3s ease; 
}

.card:hover {
    box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.25); 
}


</style>
</head>
<body style="background-color: #dbd5f2;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Registration Page</h4>
					
					<c:if test="${not empty succMsg }">
					   <p class="text-center text-success">${succMsg }</p>
					   <c:remove var="succMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg }</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>

						<form action="register" method="post">
						    <div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter Full name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="fname">
							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="email">
							</div>
							
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Phone No</label>
								<input type="number" class="form-control"
									id="exampleInputPassword1"  required="required" name="phno">
							</div>
							
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1"  required="required" name="password">
							</div>
							
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree Terms & Conditions</label>
							</div>
							<button type="submit" class="btn btn-primary" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-top: 10px;">
<%@include file="admin/footer.jsp" %> </div>
</body>
</html>