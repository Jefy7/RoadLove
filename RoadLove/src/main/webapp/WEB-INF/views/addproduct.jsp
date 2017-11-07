<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<%@ include file = "header.jsp" %>
    	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="resources/css/addproductcss.css" rel="stylesheet">
		<title>Insert title here</title>
		
	
</head>
<body>
	<div class="jolly">
		<div class="container">
			<div class="Product_Content tab-content">
				<div id="Product_main" class="tab-pane active">
					<c:if test="${check}">
						<form:form class="form-horizontal" action="productregister"
							method="POST" modelAttribute="productmodelattribute"
							enctype="multipart/form-data">
							<fieldset>
								<div class="col-lg-12 form-group margin50">
									<label class="col-lg-2" for="Name">Product Name</label>
									<div class="col-lg-4">
										<form:input type="text" id="name" name="Name" placeholder=""
											class="form-control name" path="productName"></form:input>
									</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="Manufacturer">Manufacturer</label>
									<div class="col-lg-4">
										<form:input id="manufacturer" name="Manufacturer"
											class="form-control manufacturer" placeholder="manufacturer"
											path="manufacturer"></form:input>
									</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="Distributor">Product
										Supplier</label>
									<div class="col-lg-4">
										<form:select id="distributor" name="Distributor"
											class="form-control distributor" path="productSupplier">
											<c:forEach items="${supplierlistmodelattribute }" var="sname">
											<c:set   var="supplier" value="${sname.getSupplierName() }"></c:set>
											<form:option value="${supplier }">${supplier }</form:option>

											</c:forEach>
												
										</form:select>
									</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="SKU">Description</label>
									<div class="col-lg-4">
										<form:input type="text" id="des" name="SKU" placeholder=""
											class="form-control sku" path="description"></form:input>
									</div>
								</div>
								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="SKU">Product Category</label>
									<div class="col-lg-4">
										<form:select id="distributor" name="Distributor"
											class="form-control distributor" path="productCategory">
										<c:forEach items="${categorylistmodelattribute}" var="cname">
										<c:set var="category" value="${cname.getCategoryName()}"></c:set>
										<form:option value="${category}">${category }</form:option>
										</c:forEach>
										</form:select>
										</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="SKU">Quantity</label>
									<div class="col-lg-4">
										<form:input type="text" id="sk" name="SKU" placeholder=""
											class="form-control sku" path="quantity"></form:input>
									</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="SKU">Image</label>
									<div class="col-lg-4">
										<form:input type="file" id="sk" name="SKU" placeholder=""
											class="form-control sku" path="productImage"></form:input>
									</div>
								</div>

								<div class="col-lg-12 form-group">
									<label class="col-lg-2" for="SKU">Prize</label>
									<div class="col-lg-4">
										<form:input type="text" id="ku" name="SKU" placeholder=""
											class="form-control sku" path="prize"></form:input>
									</div>
								</div>
								<button type="submit">submit</button>
							</fieldset>
						</form:form>
				</div>
				</c:if>

				<c:if test="${!check}">
					<form:form class="form-horizontal" action="updateproduct"
						method="POST" modelAttribute="productmodelattributeedit"
						enctype="multipart/form-data">
						<fieldset>
							<div class="col-lg-12 form-group margin50">
								<label class="col-lg-2" for="id">Product ID</label>
								<div class="col-lg-4">
									<form:input type="text" id="id" name="Nae" placeholder="ID"
										class="form-control name" path="productID"></form:input>
								</div>
							</div>
							<div class="col-lg-12 form-group margin50">
								<label class="col-lg-2" for="Name">Product Name</label>
								<div class="col-lg-4">
									<form:input type="text" id="name" name="Name" placeholder=""
										class="form-control name" path="productName"></form:input>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="Manufacturer">Manufacturer</label>
								<div class="col-lg-4">
									<form:input id="manufacturer" name="Manufacturer"
										class="form-control manufacturer" placeholder="manufacturer"
										path="manufacturer"></form:input>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="Distributor">Product
									Supplier</label>
								<div class="col-lg-4">
									<form:select id="distributor" name="Distributor"
										class="form-control distributor" path="productSupplier">
										<form:option value="none" var="supplierName"
											items="supplierlistmodelattribute"></form:option>
									</form:select>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Description</label>
								<div class="col-lg-4">
									<form:input type="text" id="des" name="SKU" placeholder=""
										class="form-control sku" path="description"></form:input>
								</div>
							</div>
							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Product Category</label>
								<div class="col-lg-4">
									<form:input type="text" id="su" name="SKU" placeholder=""
										class="form-control sku" path="productCategory"></form:input>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Quantity</label>
								<div class="col-lg-4">
									<form:input type="text" id="sk" name="SKU" placeholder=""
										class="form-control sku" path="quantity"></form:input>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Image</label>
								<div class="col-lg-4">
									<form:input type="file" id="sk" name="SKU" placeholder=""
										class="form-control sku" path="productImage"></form:input>
								</div>
							</div>

							<div class="col-lg-12 form-group">
								<label class="col-lg-2" for="SKU">Prize</label>
								<div class="col-lg-4">
									<form:input type="text" id="ku" name="SKU" placeholder=""
										class="form-control sku" path="prize"></form:input>
								</div>
							</div>
							<button type="submit">submit</button>
						</fieldset>
					</form:form>
			</div>
			</c:if>

			<table class="table table-bordered table-hover">
				<th>Product Id</th>
				<th>Product name</th>
				<th>Manufacturer</th>
				<th>Supplier</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Image</th>
				<th>Prize</th>
				<th colspan="2">Actions</th>
				<c:forEach var="productlist" items="${productlistmodelattribute}">

					<tr>
						<td>${productlist.getProductID()}</td>
						<td>${productlist.getProductName()}</td>
						<td>${productlist.getManufacturer()}</td>
						<td>${productlist.getProductSupplier()}</td>
						<td>${productlist.getDescription()}</td>
						<td>${productlist.getQuantity()}</td>
						<td><img src="resources/productimages/${productlist.getProductID()}.jpg" class="img-thumbnail"></img></td>
						<td>${productlist.getPrize()}</td>
						<td><a href="editproduct?proid=${productlist.getProductID()}"><button class="btn btn-primary">Edit</button></a></td>
						<td><a href="deleteproduct?proid=${productlist.getProductID()}"><button class="btn btn-danger">Delete</button></a></td>

					</tr>


				</c:forEach>

			</table>


		</div>




	</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>