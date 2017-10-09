<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/addproductcss.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    
            <form:form class="form-horizontal" modelAttribute="categorymodelattribute" action='/categoryregister' method="POST">
  
    <div class="col-lg-12 form-group margin50">
      <label class="col-lg-2"  for="Name">Category Name</label>
      <div class="col-lg-4">
        <input type="text" id="name" name="Name" placeholder="" class="form-control name">
      </div>
    </div>
    
    <table>
    	<th>Category Id</th>
    	<th>Category name</th>
    	<th>Actions</th>
    
    
    
    </table>
    
    </form:form>
    </div>
</body>
</html>