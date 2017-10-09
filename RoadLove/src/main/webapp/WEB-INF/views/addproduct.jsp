<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <div class="Product_Content tab-content">
            <div id="Product_main" class="tab-pane active">
            <form class="form-horizontal" action='' method="POST">
  <fieldset>
    <div class="col-lg-12 form-group margin50">
      <label class="col-lg-2"  for="Name">Product Name</label>
      <div class="col-lg-4">
        <input type="text" id="name" name="Name" placeholder="" class="form-control name">
      </div>
    </div>
 
   
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Manufacturer">Manufacturer</label>
      <div class="col-lg-4">
        <select id="manufacturer" name="Manufacturer" class="form-control manufacturer">
            <option value="0">-Select-</option>
        </select>
        <p class="help-block"><a>Manufacturer Quick Add</a></p>
      </div>
    </div>
    
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="SKU">Description</label>
      <div class="col-lg-4">
        <input type="text" id="sku" name="SKU" placeholder="" class="form-control sku">
      </div>
    </div>
 
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Distributor">Distributor</label>
      <div class="col-lg-4">
        <select id="distributor" name="Distributor" class="form-control distributor">
            <option value="0">-Select-</option>
        </select>
       </div></div></fieldset></form></div>
</div>
</div>
</body>
</html>