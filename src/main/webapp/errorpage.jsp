<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry Something Went Wrong !!</title>
<!-- -CSSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" type="text/css"/>


</head>
<body>
<div class="container text-center"> 
 <img alt="error img" src="img/error.png" class="img-fluid " style="width:350px; hight:200px;">
 <h3 class="display-3">Sorry Something Went Wrong</h3>
 <h5> <%=exception %></h5>
 <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3 "> Home </a>
</div>
</body>
</html>