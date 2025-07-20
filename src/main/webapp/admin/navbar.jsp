<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@page isELIgnored = "false" %>
<div class="container-fluid"
    style="height: 10px; background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% );"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3 style="font-size: 2rem; font-weight: bold; background-image: linear-gradient(86.3deg, rgba(0,119,182,1) 3.6%, rgba(8,24,68,1) 87.6%); -webkit-background-clip: text; color: transparent; display: inline-flex; align-items: center; transition: all 0.3s ease;">
    <i class="fa-solid fa-book" style="margin-right: 10px; font-size: 1.5rem; transition: transform 0.3s ease;"></i> Ebooks
</h3>
			
		</div>
		

		<div class="col-md-3">
		<c:if test="${not empty userobj }">
		<a class="btn btn-success text-white" style="background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% ); color: white; border: none;"><i
				class="fas fa-user"></i> ${userobj.name}</a> 
				<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white" style="background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% ); color: white; border: none;"><i
				class="fa-solid fa-right-to-bracket"></i> Logout</a>
		</c:if>
		<c:if test="${empty userobj }">
		<a href="../login.jsp" class="btn btn-success" style="background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% ); color: white; border: none;"><i
				class="fa-solid fa-right-to-bracket"></i> Login</a> 
				
				<a href="../register.jsp" class="btn btn-primary text-white" style="background-image: linear-gradient( 109.6deg,  rgba(15,2,2,1) 11.2%, rgba(36,163,190,1) 91.1% ); color: white; border: none;"><i
				class="fa-solid fa-user-plus"></i> Register</a>
		</c:if>
		
		</div>
	</div>
</div>

<!-- Logout Modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
        <h4>Do You want logout</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background-color: #1e7cb2" >Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white" style="background-color: #141353">Logout</a>
        </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- Logout Modal -->

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp"></i>Home<span
					class="sr-only">(current)</span></a></li>

		</form>
	</div>
</nav>