<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file = "header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">

<meta name="viewport" content="width=device-width,initial-scale=1.0" />


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style type="text/css">

.outerpadding{
    padding:10% 0%;}
.boximg{
	position:relative;
	overflow:hidden;
	}
	
.boximg img{
		transition:all ease-in 500ms;
		border:1px solid #fff;
	}	
.boximg img:hover{
	transform:scale(1.3,1.3);
	cursor:pointer;
	
	}	
	
.boximg:hover{
	border:1px solid #fff;
	}	
	
.date{
	 left: 0;
    position: absolute;
    top: 15px;
	padding:5px;
	background-color:teal;
	opacity:0;
	transition:all ease-in 300ms;
	
	}	
	
.likebut{
	  background: none repeat scroll 0 0 teal;
    height: 25px;
    padding: 7px;
    position: absolute;
    right: 5px;
    top: 130px;
    width: 25px;
	opacity:0.4;
	transition:all ease-in 300ms;
	}
	
	
.boximg:hover .date{
	opacity:1;
	
	}	
.boximg:hover .likebut{
	opacity:1;
	
}


</style>

</head>

<body>



<div class="container outerpadding">
<div class="row">
<c:forEach  items="${categoryListModelAttribute}" var="category">
  <div class="col-lg-3">
     <div class="panel">
        <div class="panel-heading" style="background-color:teal;color:#fff;"><strong>${category.getCategoryName()}</strong></div>
        <div class="panel-body" style="background-color:#000;color:#fff; box-shadow:0 -12px 13px teal inset;">
        
        <div class="boximg">
         <a href="Products/${category.getCategoryName()}"><img src="resources/categoryimages/${category.getCategoryID()}.jpg" class="img-thumbnail"></a>
         
         </div>
         
         
   <br>
   
     
        <span class="badge pull-right" style="background-color:teal">25</span>
      </div>
     </div>
  </div>
  </c:forEach>
 </div>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ include file = "footer.jsp" %>
</body>
</html>