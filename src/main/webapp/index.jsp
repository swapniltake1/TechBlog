<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.techblog.helper.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<!-- CSS -->
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
<!-- Navbar -->
<%@include file="navbar.jsp" %>

<!-- Banner -->

<div class="container-fluid p-0 m-0  ">
    
<div class="jumbotron primary-background text-white banner-background">
 <div class="container">
 <h3 class="display-3"> Welcome to TechBlog </h3>

 <p>Welcome to our techblog website, your go-to source for all things technology!
  Our mission is to provide you with the latest news, trends, and insights on the most exciting developments in the tech world.
   Whether you're a seasoned developer, a curious tech enthusiast, or just someone who wants to stay informed about the latest innovations,
    you've come to the right place. </p>
  
     
     <a class="btn btn-outline-light" href="signup.jsp"> <span class="fa fa-user-plus"></span> Join us ! its Free</a>
     <a class="btn btn-outline-light" href="login.jsp"> <span class="fa fa-user"></span> LogIn</a>
 </div>
</div>
<br>

<!-- Cards  -->
<div class="container">
<!-- Row 1 -->
 <div class="row">
  
  <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
    <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
    <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
  </div>
  <br>
  <!-- Row 2 -->
   <div class="row">
  
  <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
    <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
    <div class="col-md-4">
    
   <div class="card" ">
    <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More..</a>
    </div>
   </div>
  </div>
  
  </div>
</div>
</div>




<!-- Java Script CDN -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/myjs.js"></script>
<!-- To check Jquery and js is woring  -->



</body>
</html>