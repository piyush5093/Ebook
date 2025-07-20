<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_components/allCss.jsp" %>
<style type="text/css">

.crd-ho {
    background-color: #fff;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border-radius: 8px;
    overflow: hidden;
}

.crd-ho:hover {
transform: translateY(-10px);
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
   background-color: #cde0fa;
}

.crd-ho img {
    transition: transform 0.3s ease;
}

.crd-ho:hover img {
    transform: scale(1.05);
}


/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */

</style>
</head>
<body style="background-color: #eee9f3;">

<%
User u=(User)session.getAttribute("userobj"); 
%>

<c:if test="${not empty addCart }">

<div id="toast"> ${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<c:remove var="addCart" scope="session"/>

</c:if>

<%@include file="all_components/navbar.jsp" %>
<div class="container-fluid">
  <div class="row p-3">
     <%
           BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
           List<BookDtls> list = dao.getAllNewBook();
           for(BookDtls b : list) {
           %>
            <div class="col-md-3">
           <div class="card crd-ho mt-2">
                   <div class="card-body text-center">
                   <img alt="" src="book/<%=b.getPhotoName()%>"
                        style="width: 100px; height: 150px" class="img-thumblin">
                   <p><%=b.getBookName() %></p>
                   <p><%=b.getAuthor() %></p>
                   <p>Category:<%=b.getBookCategory() %></p>
                   <div class="row">
                   
                   <%if(u==null) { %>
                   <a href="login.jsp" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #141353">Add Cart</a>
                   <%} else { %>
                    <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #141353">Add Cart</a>
                   <%} %>
                   
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #1e7cb2">View Details</a>
                        <a href="" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #141353"><%=b.getPrice() %>
                        <i class="fa-solid fa-indian-rupee-sign"></i></a>
               </div>
            </div>
            </div>
            </div>
           <% 
           }
           %>
                   
  </div>
</div>
</body>
</html>