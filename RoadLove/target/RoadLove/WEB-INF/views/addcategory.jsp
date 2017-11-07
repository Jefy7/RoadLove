<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/addproductcss.css" rel="stylesheet">
<title>Insert title here</title>

</head>
<body>
<div id="background"></div>
<div class="jolly">
<div class="container">
			
			
			<c:if test="${check}">
					<form:form class="form-horizontal" action="categoryregister"
				modelAttribute="categorymodelattribute" method="POST" enctype="multipart/form-data">

				<div class="col-lg-12 form-group margin50">
					<label class="col-lg-2" for="Name">Category Name</label>
					<div class="col-lg-4">
						<form:input type="text" id="name" name="Name" placeholder="name"
							class="form-control name" path="categoryName"></form:input>
					</div>
					<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Image</label>
								<div class="col-lg-4">
									<form:input type="file" id="sk" name="SKU" placeholder=""
										class="form-control sku" path="categoryImage"></form:input>
								</div>
							</div>

					<button type="submit">submit</button>
				</div>

			</form:form>
				
			</c:if>
			
			<c:if test="${!check }">
				<form:form class="form-horizontal" action="updatecategory"
				modelAttribute="categorymodelattributeedit" method="POST">

				<div class="col-lg-12 form-group margin50">
					
					<label class="col-lg-2" for="Name">Category Id</label>
					<div class="col-lg-4">
						<form:input type="text" id="id" name="Name" placeholder="id"
							class="form-control name" path="categoryID"></form:input>
					</div>
					
					<label class="col-lg-2" for="Name">Category Name</label>
					<div class="col-lg-4">
						<form:input type="text" id="name" name="Name" placeholder="name"
							class="form-control name" path="categoryName"></form:input>
					</div>

					<button type="submit" class="btn btn-primary">submit</button>
				</div>

			</form:form>
			</c:if>
			

			<table class="table table-bordered  table-hover">
    	<th>Category Id</th>
    	<th>Category name</th>
    	<th>Category Image</th>
    	<th colspan="2">Actions</th>
    	<c:forEach var="catlist" items="${categorylistmodelattribute}"  >
    	
     <tr>
    	<td>${catlist.getCategoryID()}</td>
    	<td>${catlist.getCategoryName()}</td>
    	<td><img src="resources/categoryimages/${catlist.getCategoryID()}.jpg" class="img-thumbnail "></img></td>
    	<td><a href="editcategory?catid=${catlist.getCategoryID()}"><button class="btn btn-primary">Edit</button></a></td>
    	<td><a href="deletecategory?catid=${catlist.getCategoryID()}"><button class="btn btn-danger">Delete</button></a></td>
    	
    </tr>
    
    
    </c:forEach>
    
    </table>
    </div>
    </div>
    <%@ include file = "footer.jsp" %>
</body>
</html>