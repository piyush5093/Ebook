<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
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
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-2">
					<div class="card-body">

						<h5 class="text-center text-primary p-1">Sell Old Book</h5>
						
						<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg}</p>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>

						<form action="add_old_book" method="post"
							enctype="multipart/form-data">

							<input type="hidden" value="${userobj.email}" name="user">

							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Book
									Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="bname">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Author
									Name </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="author">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Price</label>
								<input type="number" class="form-control"
									id="exampleInputPassword1" required="required" name="price">
							</div>


							<div class="form-group">
								<label for="exmpleFormControlFile1">Upload Photo</label> <input
									name="bing" type="file" class="form-control-file"
									id="exmpleFormControlFile1">
							</div>

							<button type="submit" class="btn btn-primary" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">Sell</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>