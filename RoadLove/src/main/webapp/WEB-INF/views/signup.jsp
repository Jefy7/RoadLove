<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header.jsp" %>
<link href="resources/css/signup.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script src="https://use.fontawesome.com/1dec14be15.js"></script>
    <div class="container-fluid stylish-form">
     
      <div class="row mar20" >
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="inner-section">
            <form:form modelAttribute="usermodelattribute" action="userregister">
              <div class="mar20 inside-form">
                <h2 class="font_white text-center">SIGN UP</h2>
                <ul>
                  <li class="icon-holder dsp-flex">
                    <i class="fa fa-facebook "></i>
                  </li>
                  <li class="icon-holder dsp-flex">
                    <i class="fa fa-twitter "></i>
                  </li>
                  <li class="icon-holder dsp-flex">
                    <i class="fa fa-instagram "></i>
                  </li>
                </ul>
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-pencil "></i></span>
                  <form:input type="text" class="form-control" name="text" placeholder="Name..." path="name"></form:input>
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-envelope "></i></span>
                  <form:input type="email" class="form-control" name="text" placeholder="Email..." path="email"></form:input>
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock "></i></span>
                  <form:input type="password" class="form-control" name="text" placeholder="Password..." path="password"></form:input>
                </div>
               
            <div >
             <div class="footer text-center" >
                 
                  <button type="submit" class="btn btn-success">Get started</button>
                  </form:form><br>
                  
                  <br>
               <a href="login"><button class="btn btn-success" type="button">Login</button></a>
                </div>
            </div>
              </div>
            
            
          </div>
        </div>
      </div>
   
    </div>
<%@ include file = "footer.jsp" %>
</body>
</html>