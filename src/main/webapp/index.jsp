<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook : Index</title>
<%@include file="all_components/allCss.jsp" %>
<style type="text/css">
.back-img {
     background: url("img/b.jpg");
     height: 50vh;
     width : 100%;
     background-size : cover;
     background-repeat: no-repeat;
}

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

h2 {
        font-size: 3rem; 
        font-weight: bold; 
        text-transform: uppercase; 
        color: #ffffff; 
        letter-spacing: 3px; 
        text-shadow: 0 0 15px #171617, 0 0 30px #171617; 
        animation: pulse 2s infinite;
   }


</style>
</head>
<body style="background-color:#eee9f3;">

<%
User u=(User)session.getAttribute("userobj"); 
%>

   <%@include file="all_components/navbar.jsp" %>
   <div class="container-fluid back-img">  
        <h2 class="text-center text-white">Ebook Management System</h2> 
   </div>
   
<!-- Start Recent Book -->

   <div class="container ">
        <h3 class="text-center">Recent Books</h3>
        <div class="row">
        <%
        BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2 =dao2.getRecentBook();
        for(BookDtls b: list2)
        {%>
         
           <div class="col-md-3">
               <div class="card crd-ho">
                   <div class="card-body text-center">
                   <img alt="" src="book/<%=b.getPhotoName() %>"
                        style="width: 150px; height: 200px" class="img-thumblin">
                   <p><%=b.getBookName() %></p>
                   <p><%=b.getAuthor() %></p>
                   <p>
                   <%
                   if(b.getBookCategory().equals("Old"))
                   {%>
                   Categories:<%=b.getBookCategory() %></p>
                	<div class="row"> 
                	
                	
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #1e7cb2">View Details</a>
                        <a href="" class="btn btn-white btn-sm ml-1 text-white" style="background-color: #141353"><%=b.getPrice() %></a>
               </div>
                	<%   
                   } else {%>
                    Categories:<%=b.getBookCategory() %></p>
                   <div class="row">
                   
                   
                	<%if(u==null) { %>
                   <a href="login.jsp" class="btn btn-white btn-sm ml-2 text-white" style="background-color: #141353">Add Cart</a>
                   <%} else { %>
                    <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-white btn-sm ml-2 text-white" style="background-color: #141353">Add Cart</a>
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
            
            <div class="text-center mt-1">
                 <a href="all_recent_book.jsp" class="btn btn-white btn-sm text-white" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">View All</a>
            </div>
        </div>
        
<!-- End Recent Book -->

<hr>

<!-- Start New Book -->

   <div class="container ">
        <h3 class="text-center">New Books</h3>
        <div class="row">
          
           <%
           BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
           List<BookDtls> list = dao.getNewBook();
           for(BookDtls b : list) {
           %>
            <div class="col-md-3">
           <div class="card crd-ho">
                   <div class="card-body text-center">
                   <img alt="" src="book/<%=b.getPhotoName()%>"
                        style="width: 150px; height: 200px" class="img-thumblin">
                   <p><%=b.getBookName() %></p>
                   <p><%=b.getAuthor() %></p>
                   <p>Category:<%=b.getBookCategory() %></p>
                   <div class="row">
                   
                   <%if(u==null) { %>
                   <a href="login.jsp" class="btn btn-white btn-sm ml-2 text-white" style="background-color: #141353">Add Cart</a>
                   <%} else { %>
                    <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-white btn-sm ml-2 text-white" style="background-color: #141353">Add Cart</a>
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
            
            <div class="text-center mt-1">
                 <a href="all_new_book.jsp" class="btn btn-white btn-sm text-white" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">View All</a>
            </div>
        </div>
        
<!-- End New Book -->

<hr>
<!-- Start Old Book -->

   <div class="container ">
        <h3 class="text-center">Old Books</h3>
        <div class="row">
           <%
        BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list3 =dao2.getOldBook();
        for(BookDtls b: list3)
        {%>
         
           <div class="col-md-3">
               <div class="card crd-ho">
                   <div class="card-body text-center">
                   <img alt="" src="book/<%=b.getPhotoName() %>"
                        style="width: 150px; height: 200px" class="img-thumblin">
                   <p><%=b.getBookName() %></p>
                   <p><%=b.getAuthor() %></p>
                   <p><%=b.getBookCategory() %></p>
                   <div class="row">
                        
                        <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-white btn-sm ml-5 text-white" style="background-color: #1e7cb2">View Details</a>
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
            
            <div class="text-center mt-1">
                 <a href="all_old_book.jsp" class="btn btn-white btn-sm text-white" style="background-image: linear-gradient( 86.3deg,  rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6% );">View All</a>
            </div>
        </div>
       
        
<!-- End Old Book -->

<%@include file="all_components/footer.jsp" %>
</body>
</html>