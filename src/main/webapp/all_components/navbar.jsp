
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<div class="container-fluid"
	style="height: 10px; background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%);"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success" style="">

			<h3
				style="font-size: 2rem; font-weight: bold; background-image: linear-gradient(86.3deg, rgba(0, 119, 182, 1) 3.6%, rgba(8, 24, 68, 1) 87.6%); -webkit-background-clip: text; color: transparent; display: inline-flex; align-items: center; transition: all 0.3s ease;">
				<i class="fa-solid fa-book"
					style="margin-right: 10px; font-size: 1.5rem; transition: transform 0.3s ease;"></i>
				Ebooks
			</h3>


		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action="search.jsp"
				method="post">
				<input class="form-control mr-sm-2" type="search" name="ch"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit"
					style="background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%); color: white; border: none;">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj }">
			<div class="col-md-3">

				<a href="checkout.jsp"><i class="fa-solid fa-cart-plus fa-2x"></i></a>

				<a href="login.jsp" class="btn btn-success"
					style="background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%); color: white; border: none;"><i
					class="fa-solid fa-user-plus"></i> ${userobj.name}</a> <a href="logout"
					class="btn btn-primary text-white"
					style="background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%); color: white; border: none;"><i
					class="fa-solid fa-right-to-bracket"></i> Logout</a>
			</div>

		</c:if>

		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"
					style="background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%); color: white; border: none;"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a> <a
					href="register.jsp" class="btn btn-primary text-white"
					style="background-image: linear-gradient(109.6deg, rgba(15, 2, 2, 1) 11.2%, rgba(36, 163, 190, 1) 91.1%); color: white; border: none;"><i
					class="fa-solid fa-user-plus"></i> Register</a>
			</div>

		</c:if>


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
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home<span
					class="sr-only">(current)</span></a></li>

			<li class="nav-item active"><a class="nav-link"
				href="all_recent_book.jsp"><i class="fa-solid fa-book-open"></i>
					Recent Book</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_new_book.jsp"><i class="fa-solid fa-book-open"></i>
					New Book</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i>
					Old Book</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit"><i class="fa-solid fa-gear"></i> Setting</a>
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-phone"></i> Contact Us
			</button>
		</form>
	</div>
</nav>