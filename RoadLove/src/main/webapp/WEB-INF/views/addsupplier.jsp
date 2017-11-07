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
<div class="jolly">
<div class="container">

			<c:if test="${check}">
				<form:form class="form-horizontal" action="supplierregister"
					modelAttribute="suppliermodelattribute" method="POST">

					<div class="col-lg-12 form-group margin50">
						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Supplier Name</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="supplierName"></form:input>
							</div>
						</div>


						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Address</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="address"></form:input>
							</div>
						</div>

						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Contact no</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="contactNo"></form:input>
							</div>
							<button type="submit">submit</button>
						</div>
					</div>

				</form:form>
			</c:if>
			<c:if test="${!check }">
				<form:form class="form-horizontal" action="updatesupplier"
					modelAttribute="suppliermodelattributeedit" method="POST">

					<div class="col-lg-12 form-group margin50">
					<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Supplier ID</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="ID"
									class="form-control name" path="supplierID"></form:input>
							</div>
						</div>
					
						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Supplier Name</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="supplierName"></form:input>
							</div>
						</div>


						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Address</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="address"></form:input>
							</div>
						</div>

						<div class="col-lg-12 form-group margin50">
							<label class="col-lg-2">Contact no</label>
							<div class="col-lg-4">
								<form:input type="text" placeholder="name"
									class="form-control name" path="contactNo"></form:input>
							</div><br/>
							<button type="submit">submit</button>
						</div>
					</div>

				</form:form>

			</c:if>

			<table class="table table-bordered table-hover">
		<th>Supplier ID</th>
		<th>Supplier name</th>
		<th>Address</th>
		<th>Contact no</th>
		<th colspan="2">Actions</th>
		<c:forEach var="supplierlist" items="${supplierlistmodelattribute}">

			<tr>
				<td>${supplierlist.getSupplierID()}</td>
				<td>${supplierlist.getSupplierName()}</td>
				<td>${supplierlist.getAddress()}</td>
				<td>${supplierlist.getContactNo()}</td>
				<td><a href="editsupplier?supid=${supplierlist.getSupplierID()}"><button type="button" class="btn btn-primary">Edit</button></a></td>
				<td><a href="deletesupplier?supid=${supplierlist.getSupplierID()}"><button type="button" class="btn btn-danger">Delete</button></a></td>

			</tr>


		</c:forEach>

	</table>
</div>
</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>