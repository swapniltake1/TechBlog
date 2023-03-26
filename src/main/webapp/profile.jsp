<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.techblog.entities.User" errorPage="errorpage.jsp" %>
    
    <%
 User user=(User) session.getAttribute("currentuser");

if(user==null){
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<style>
.banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 83%, 68% 90%, 33% 94%, 0 100%, 0 0);
}
</style>
</head>
<body>
  <!-- NavBAr -->
  
  <nav class="navbar navbar-expand-lg navbar-dark primary-background">
	<a class="navbar-brand" href="#"><span class="fa fa-asterisk"></span>TechBlog
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><span
					class="fa fa-anchor"></span> Home <span class="sr-only">(current)</span></a>
			</li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <span class="fa fa-bullhorn"></span>
					Categories
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Programming Language</a> <a
						class="dropdown-item" href="#">Project Implementation</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">DSA</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="#"> <span
					class="fa fa-address-book-o"></span> Contact
			</a></li>
			
		</ul>
		<ul class="navbar-nav mr-right">
		   <li class="nav-item"><a class="nav-link" href="signup.jsp">
					<span class="fa fa-user-circle"></span><%= user.getName() %>
			</a></li>
		
		   <li class="nav-item"><a class="nav-link" href="LogoutServlet">
					<span class="fa fa-user-plus"></span>Log Out
			</a></li>
		</ul>
	</div>
</nav>
  
  <!-- End Of NavBAr -->
  
  
  
  
  
  
  <!-- Java Script CDN -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/myjs.js"></script>
  
</body>
</html>