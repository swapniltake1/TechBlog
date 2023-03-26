<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up </title>
<!-- CSS -->
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
<main class="primary-background banner-background" style="padding-bottom:100px">
  <div class="container">
  
  <div class="col-md-6 offset-md-3">
  
  <div class="card">
  
  <div class="card-header text-center primary-background" >
  <span class="fa fa-3x fa-user-circle"></span>
  <p> Register Here </p>
  </div>
  <div class="card-body">
  <form action="RegisterServlet" method="post" id="reg">
  <div class="form-group">
    <label for="username">User Name</label>
    <input name="username" type="text" class="form-control" id="username"  placeholder="Enter Your Name">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="useremail" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="gender">Select Gender</label>
    <br>
    <input type="radio" id="genderm" value="male" name="gender"> Male
    <input type="radio" id="genderf" value="female" name="gender"> Female
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="userpassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password">
  </div>
  
  <div class="form-group">
   
   <textarea name="userabout" id="about"  class="form-control" placeholder="Enter Something About Yourself"></textarea>
  </div>
  
  <div class="form-check">
    <input name="usercheck" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree with terms and conditions</label>
  </div>
  <br>
  <div class="container text-center" id="loader" style="display:none">
  <i class="fa fa-refresh fa-spin fa-2x"></i>
  <h4> Please Wait ....</h4>
  </div>
  <button id="submit-btn" type="submit" class="btn primary-background">Sign Up</button>
</form>
  </div>
  <div class="card-footer">
  
  </div>
  </div>
  </div>
  </div>

</main>




<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/myjs.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
 $(document).ready(function(){
	 console.log("loaded")
	 
	 $('#reg').on('submit', function(event){
		 event.preventDefault();
		 
		 $("#submit-btn").hide;
		 $("#loader").show();
		 let form=new FormData(this);
		 
		 //send register servlet
		 $.ajax({
			 url: "RegisterServlet",
			 type: "POST",
			 data: form,
			 success: function(data, textStatus, jqXHR){
				 console.log(data)
				 
				 $("#submit-btn").show();
				 $("#loader").hide();
				 
		//	if(data.trim=='done') {
				
				swal("Registerd Succesfully.. We are redirecting to login page !")
						  .then((value)=>{
							  window.location="login.jsp"
						  });
	//		} 
	//		else{
	//			swal(data)
	//		}		
				 
			 },
			 error: function(jqXHR, textStatus, errorThrown){
				 console.log(data)
				 
				 $("#submit-btn").show();
				 $("#loader").hide();
				 swal("something went wrong")
			 },
			 processData: false,
			 contentType: false
		 })
	 })
	 
 })
</script>
</body>
</html>