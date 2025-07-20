<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
</head>
<body style="background-color: #eee9f3;">
<%
User u=(User)session.getAttribute("userobj"); 
%>

<%@include file="all_components/navbar.jsp" %>
<div class="container-fluid">
  <div class="row p-3">
     <%
        BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2 =dao2.getAllRecentBook();
        for(BookDtls b: list2)
        {%>
         
           <div class="col-md-3">
               <div class="card crd-ho mt-2">
                   <div class="card-body text-center">
                   <img alt="" src="book/<%=b.getPhotoName() %>"
                        style="width: 100px; height: 150px" class="img-thumblin">
                   <p><%=b.getBookName() %></p>
                   <p><%=b.getAuthor() %></p>
                   <p>
                   <%
                   if(b.getBookCategory().equals("Old"))
                   {%>
                   Categories:<%=b.getBookCategory() %></p>
                	<div class="row"> 
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #1e7cb2">View Details</a>
                        <a href="" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #141353"><%=b.getPrice() %> <i class="fa-solid fa-indian-rupee-sign"></i></a>
               </div>
                	<%   
                   } else {%>
                    Categories:<%=b.getBookCategory() %></p>
                   <div class="row">
                        
                        
                	<%if(u==null) { %>
                   <a href="login.jsp" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #141353">Add Cart</a>
                   <%} else { %>
                    <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #141353">Add Cart</a>
                   <%} %>
                        
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #1e7cb2">View Details</a>
                        <a href="" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #141353"><%=b.getPrice() %> <i class="fa-solid fa-indian-rupee-sign"></i></a>
               </div> 
                   <%
                   }
                   %>
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