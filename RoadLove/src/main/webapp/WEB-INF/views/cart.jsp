
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">
    <%@ include file = "header.jsp" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <title>your cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    
    </style>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    function hello(prodid)
    {   		
    		var h=document.getElementById(prodid).value;
    		var url='updcart/'+parseInt(prodid)+'/'+parseInt(h)+'/';
    		window.location.href=url;
    	
    }
    </script>
    
</head>
<body>
	<div class="container" style=" margin-top: 40pt;">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartproducts}" var="cartpro">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                             <img class="media-object" src="resources/productimages/${cartpro.getProductID()}.jpg" style="width: 72px; height: 72px;" alt="hi"> 
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cartpro.getProductname()}</a></h4>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <c:set   var="prodid" value="${cartpro.getProductID()}"></c:set>
                        <input type="number" class="form-control" value="${cartpro.getItems()}" min="1" onclick="hello(${prodid})" id="${cartpro.getProductID()}">
                        
                        
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cartpro.getProductprize()}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cartpro.getTotal()}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3> </td>
                        <td class="text-right"><h3>${grandtotal}</h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        <td>
                        <a href="checkout"><button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
	<script type="text/javascript">
	
	</script>
</body>
</html>
