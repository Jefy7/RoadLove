<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/css/lol.css" rel="stylesheet">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="resources/js/mainJS.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css"> 
        body {
         background: url(assets/bglight.png); 
         }
        .hero-unit { 
        background-color: #fff; 
        }
        .center { display: block; margin: 0 auto; }
        
        .nav .navbar-nav .white{
        	color:white;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand text-uppercase" href="index">RoadLove <span class="label label-success text-capitalize">Bikez</span></a>
       
     
  <ul class="nav navbar-nav white">
  		<li><a><c:out value="Hello ${sessionScope.name}"> </c:out> </a></li>
  </ul>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation">
            <ul class="nav navbar-nav navbar-right">
               <li><a href="aboutus">About</a></li>
               <li><a href="home">Home</a></li>
               <li><a href="contact">Contact us</a></li>
               
             <li><a href="category">Products</a></li>
      <li>
            <c:if test="${sessionScope.admin }">
               <li><a href="addproduct">Add product</a></li>
               <li><a href="addsupplier">Add supplier</a></li>
               <li><a href="addcategory">Add Category</a></li>
               </c:if>
            <c:if test="${sessionScope.name==null }"> 
               <li><a href="login"> <button  type="button" class="btn btn-success navbar-btn ">Log in</button></a></li>
               <li><a href="signup"><button class="btn btn-success signup navbar-btn" type="submit">Sign up for free </button></a></li>
               </c:if>
            <c:if test="${sessionScope.name!=null }">
               <li><a href="logout"> <button  type="button" class="btn btn-success navbar-btn ">Log out</button></a></li>
               </c:if>
            </ul>
        </div>
      </div>
    </nav>

    
</body>
</html>