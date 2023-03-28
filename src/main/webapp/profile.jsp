<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.techblog.entities.User" errorPage="errorpage.jsp"%>

<%
User user = (User) session.getAttribute("currentuser");

if (user == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" type="text/css" />

<style>
.banner-background {
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
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp"><span class="fa fa-anchor"></span> Home <span
						class="sr-only">(current)</span></a></li>

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
				<li class="nav-item"><a class="nav-link" href="signup.jsp"
					data-toggle="modal" data-target="#profile-Modal"> <span
						class="fa fa-user-circle"></span><%=user.getName()%>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet">
						<span class="fa fa-user-plus"></span>Log Out
				</a></li>
			</ul>
		</div>
	</nav>

	<!-- End Of NavBAr -->

	<!-- Start of profile modal -->



	<!-- Modal -->
	<div class="modal fade" id="profile-Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-background text-white text-center">
					<h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img src="profile/<%=user.getProfile()%>" class="img-fluid"
							style="border-radius: 50%; max-width: 100px">
						<h5 class="modal-title mt-3" id="exampleModalLabel">
							<%=user.getName()%></h5>
						<!-- Details -->
						<div id="profile-details">
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">ID:</th>
									<td><%=user.getId()%></td>

								</tr>
								<tr>
									<th scope="row">Email:</th>
									<td><%=user.getEmail()%></td>

								</tr>
								<tr>
									<th scope="row">Gender:</th>
									<td><%=user.getGender()%></td>

								</tr>
								<tr>
									<th scope="row">Status:</th>
									<td><%=user.getAbout()%></td>

								</tr>
								<tr>
									<th scope="row">Joined TechBlog:</th>
									<td><%=user.getDatetime().toString()%></td>

								</tr>
							</tbody>
						</table>
						</div>
						<!-- End of details -->
						<!-- Profile edit -->
						<div id="profile-edit" style="display:none">
						 <h3 class="mt-3">Please Edit Carefully</h3> 
						 <!-- Edit Details -->
						 <form action="EditServlet" method="post" enctype="multipart/form-data">
						  <table class="table">
						  
						  <tr>
						  <td>Profile:</td>
						  <td>
						   <input type="file" class="form-control" name="userprofile" >
						  </td>
						  </tr>
						  
						  <tr>
						  <td>ID:</td>
						  <td> <%=user.getId() %></td>
						  </tr>
						  
						  <tr>
						  <td>Name:</td>
						  <td><input type="text" class="form-control" name="username" value="<%=user.getName() %>" /></td>
						  </tr>
						  
						  <tr>
						  <td>Email:</td>
						  <td><input type="email" class="form-control" name="useremail" value="<%=user.getEmail() %>" /></td>
						  </tr>
						  
						  <tr>
						  <td>Password:</td>
						  <td><input type="password" class="form-control" name="userpassword" value="<%=user.getPassword() %>" /></td>
						  </tr>
						  
						  <tr>
						  <td>Gender:</td>
						  <td> <%=user.getGender().toUpperCase() %></td>
						  </tr>
						  
						  <tr>
						  <td>About:</td>
						  <td>
						   <textarea rows="4" class="form-control" name="userabout">
						   <%=user.getAbout() %>
						   </textarea >
						  </td>
						  </tr>
						  
						  </table>
						  <div>
						  <button type="submit" class="btn btn-outline-primary">Save</button>
						  </div>
						  <!-- END OF Edit Details -->
						 </form>
						
						</div>
						<!-- End of profile edit -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="editbutton">Edit</button>
				</div>
			</div>
		</div>
	</div>

	<!-- End of profile model -->



	<!-- Java Script CDN -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/myjs.js"></script>
	
	<script>
	 $(document).ready(function(){
		 
		 let editStatus=false;
		
		 $('#editbutton').click(function(){
		//	 alert("button clicked ")
		 
		if(editStatus==false){
		$('#profile-details').hide()
		$('#profile-edit').show()
		editStatus=true;
		$(this).text("Back")
		} 
		else{
			$('#profile-details').show()
			$('#profile-edit').hide()
			editStatus=false;
		}
		 })
	 })
	
	</script>

</body>
</html>