<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
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
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-2">
					<div class="card-body">
					
					<h4 class="text-center text-primary">Edit Profile</h4>
					
					<c:if test="${not empty failedMsg }">
					<h5 class="text-center text-danger">${failedMsg }</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty succMsg }">
					<h5 class="text-center text-success">${succMsg }</h5>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					
					<form action="update_profile" method="post">
					<input type="hidden" value="${userobj.id }" name="id">
						    <div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter Full name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="fname" value="${userobj.name}">
							</div>
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="email" value="${userobj.email}">
							</div>
							
							<div class="mb-3">
								<label for="exampleInputPassword1">Phone No</label>
								<input type="number" class="form-control" id="exampleInputPassword1" required="required" name="phno" value="${userobj.phno}">
								
							</div>
							
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1"  required="required" name="password">
							</div>
							
							<button type="submit" class="btn btn-primary" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">Update Profile</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>