<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header.jsp" %>
<link href="resources/css/loginMenu.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">            
            <div class="wrap">
                <p class="form-title">
                    Log In</p>
                <form class="login" action="userlogin">
                
                <input type="text"  id="email" name="email"  placeholder="Email" />
                <input type="password"  id="password" name="password"  placeholder="Password" />
                <input type="submit" value="Log In" class="btn btn-success btn-sm" />
                <div class="remember-forgot">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" />
                                    Remember Me
                                </label>
                            </div>
                           
                        </div>
                        <div class="col-md-6 forgot-pass-content">
                            <a href="javascription:void(0)" class="forgot-pass">Forgot Password</a>
                          
                        </div>
                    </div>
                </div>
                </form>
                
        </div>
    </div>
    
</div></div>
<%@ include file = "footer.jsp" %>
</body>
</html>