<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Orders</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #dbd5f2;">
	<%@include file="navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center">Hello Admin</h3>

	<table class="table table-striped">
		<thead class="bg-primary text-white" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>

			<%
			BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
			List<Book_Order> blist = dao.getAllOrder();
			for (Book_Order b : blist) {
			%>
			<tr>
				<th scope="row"><%=b.getOrder_id()%></th>
				<td><%=b.getUserName()%></td>
				<td><%=b.getEmail()%></td>
				<td><%=b.getFullAdd()%></td>
				<td><%=b.getPhno()%></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getPaymentType()%></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

	<div style="margin-top: 290px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>