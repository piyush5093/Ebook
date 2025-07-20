<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.DAO.BookDAOImpl" %>
 <%@page import="com.DB.DBConnect" %>
  <%@page import="com.entity.BookDtls" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Books</title>
<%@include file="allCss.jsp"%>
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
<body style="background-color: #dbd5f2">

	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-2">
					<div class="card-body">
					<h4 class="text-center">Edit Books</h4>
				
                    <%
                    int id = Integer.parseInt(request.getParameter("id"));
                    BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                    BookDtls b = dao.getBookById(id);
                    %>

						<form action="../editbooks" method="post" >
						<input type="hidden" name="id" value="<%=b.getBookId()%>">
						
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Book
									Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="bname" value="<%=b.getBookName() %>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Author
									Name </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="author" value="<%=b.getAuthor() %>">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Price</label>
								<input type="number" class="form-control"
									id="exampleInputPassword1" required="required" name="price" value="<%=b.getPrice() %>">
							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="status" class="form-control">
									<% if("Active".equals(b.getStatus())) { %>
									<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
										<%
									} else { %>
									<option value="Inactive">Inactive</option>
									    <option value="Active">Active</option>
									<%}
									%>
									
									
								</select>
							</div>


							<button type="submit" class="btn btn-primary" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">Update</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

<div style="margin-top: 70px;">
<%@include file="footer.jsp" %> </div>
</body>
</html>