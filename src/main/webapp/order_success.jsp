<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #dbd5f2;">
<%@include file="all_components/navbar.jsp"%>

<div class="container text-center mt-3">
<i class="fas fa-check-circle fa-5x text-success"></i>
<h1>Thank You</h1>
<h2>Your Order Successfully</h2>
<h5>Within 5 Days Your Product Will be Delivered In your Address</h5>
<a href="index.jsp" class="btn btn-white text-white mt-3" style="background-color: #1e7cb2">Home</a>
<a href="order.jsp" class="btn btn-white text-white mt-3" style="background-color: #141353">View Order</a>
</div>

</body>
</html>