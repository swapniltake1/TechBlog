<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.techblog.entities.message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page </title>

<!-- -- CSSS  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" type="text/css"/>

<style>
.banner-background{
clip-path: polygon(50% 0, 85% 0, 100% 0, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0 0, 23% 0);
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<main class="d-flex align-items-center primary-background banner-background" style="height:90vh; padding-bottom:100px" >
    <div class="container">
       <div class="row">
          <div class="col-md-4 offset-md-4">
          
              <div class="card ">
                <div class="card-header primary-background text-center">
                <span class="fa fa-user-plus fa-3x"></span>
                <br>
                 <p> Login Here </p>
                </div>
                
                <%
               message msg=(message) session.getAttribute("msg");
                if(msg!=null){
                %>
                
             <!--    // Write a code for get class of css  -->
                <div class="<%=msg.getCssClass() %> text-center" role="alert">
                <%= msg.getContent() %>
                </div> 
                <%
                session.removeAttribute("msg");
                }
                 %>

						<div class="card-body">

							<form action="LoginServlet" method="post">

								<div class="form-group">
									<label for="Email">Email address</label> <input name="email"
										required type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="Enter email"> <small id="emailHelp"
										class="form-text text-muted">We'll never share your
										email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="Password">Password</label> <input name="password"
										required type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Keep me logged in ...</label>
								</div>
								<br>
								<div class="container text-center">
									<button type="submit" class="btn btn-primary">Log In</button>
								</div>
							</form>
						</div>

						<div class="card-footer primary-background">
                </div>
              </div>
          
          </div>
       
       </div>
    
    </div>



</main>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/myjs.js"></script>
</body>
</html>