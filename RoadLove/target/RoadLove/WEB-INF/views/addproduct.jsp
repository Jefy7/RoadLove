<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/lol.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div>
    <div class="Product_Button col-lg-offset-6">
        <a href="#" class="btn btn-primary"><i class=""></i><strong>MANAGE VARIANTS</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>CLOSE</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>SAVE AND CLOSE</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>SAVE</strong></a>
    </div>
</div>
<div class="clearfix"></div>
	<div class="row">
		<div><ul class="nav nav-tabs col-lg-12" role="tablist">
            <li class="active"><a href="#Product_main" role="tab" data-toggle="tab">Main</a></li>
            <li class=""><a href="#Product_Images" role="tab" data-toggle="tab">Images</a></li>
            <li class=""><a href="#Product_Summary"  role="tab" data-toggle="tab">Summary</a></li>
            <li class=""><a href="#Product_Desc" role="tab" data-toggle="tab">Description</a></li>
            <li class=""><a href="#Product_Mappings" role="tab" data-toggle="tab">Mappings</a></li>
            <li class=""><a href="#Product_StoreMapping" role="tab" data-toggle="tab">Store Mapping</a></li>
            <li class=""><a href="#Product_Options" role="tab" data-toggle="tab">Options</a></li>
        </ul></div> 
        <div class="clearfix"></div>
        <div class="Product_Content tab-content">
            <div id="Product_main" class="tab-pane active">
            <form class="form-horizontal" action='' method="POST">
  <fieldset>
    <div class="col-lg-12 form-group margin50">
      <label class="col-lg-2"  for="Name">Name</label>
      <div class="col-lg-4">
        <input type="text" id="name" name="Name" placeholder="" class="form-control name">
      </div>
    </div>
 
    <div class=" col-lg-12 form-group">
      <label class="col-lg-2" for="ProductType">Product Type</label>
      <div class="col-lg-4">
        <select id="productType" name="ProductType" class="form-control product-type">
            <option value="0">-Select-</option>
        </select>
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
      <label class="col-lg-2" for="Distributor">Distributor</label>
      <div class="col-lg-4">
        <select id="distributor" name="Distributor" class="form-control distributor">
            <option value="0">-Select-</option>
        </select>
        <p class="help-block"><a>Distributor Quick Add</a></p>
      </div>
    </div>
    
 
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="SKU">SKU</label>
      <div class="col-lg-4">
        <input type="text" id="sku" name="SKU" placeholder="" class="form-control sku">
      </div>
    </div>
 
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="ManufacturerPart">Manufacturer Part</label>
      <div class="col-lg-4">
        <input type="text" id="manufacturerPart" name="ManufacturerPart" placeholder="" class="form-control manufacturer-part">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="Published">Published</label>
      <div class="col-lg-4">
        <input type="radio"  name="Published" class="input-xlarge"><span>No</span>
         <input type="radio"  name="Published" checked class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="Featured">Featured</label>
      <div class="col-lg-4">
        <input type="radio"  name="Featured" class="input-xlarge"><span>No</span>
         <input type="radio"  name="Featured" checked class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="PageDisplay">Page Display</label>
      <div class="col-lg-4">
        <select id="pageDisplay" name="PageDisplay" class="form-control page-display">
            <option value="0">-Select-</option>
        </select>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="ColumnWidth">Column Width</label>
      <div class="col-lg-4">
        <input type="text" id="columnWidth" name="ColumnWidth" placeholder="" class="form-control column-width">
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="TaxClass">Tax Class</label>
      <div class="col-lg-4">
        <select id="taxClass" name="TaxClass" class="form-control tax-class">
            <option value="0">-Select-</option>
        </select>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="QuantityDiscountTable">Quantity Discount Table</label>
      <div class="col-lg-4">
        <select id="quantityDiscount" name="QuantityDiscountTable" class="form-control quantity-discount">
            <option value="0">-Select-</option>
        </select>
        <p class="help-block"><a>Quantity Discount Quick Add</a></p>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="ShowBuyButton">Show Buy Button</label>
      <div class="col-lg-4">
        <input type="radio"  name="ShowBuyButton" class="input-xlarge"><span>No</span>
         <input type="radio"  name="ShowBuyButton" checked class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="RequiresRegistrationToView">Requires Registration To View</label>
      <div class="col-lg-4">
        <input type="radio"  name="RequiresRegistrationToView" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="RequiresRegistrationToView"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="CallToOrder">Is Call To Order</label>
      <div class="col-lg-4">
        <input type="radio"  name="CallToOrder" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="CallToOrder"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="HidePriceUntilCart">Hide Price Until Cart</label>
      <div class="col-lg-4">
        <input type="radio"  name="HidePriceUntilCart" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="HidePriceUntilCart"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="ProductFeeds">Exclude From Product Feeds</label>
      <div class="col-lg-4">
        <input type="radio"  name="ProductFeeds" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="ProductFeeds"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="Kit">Is a Kit</label>
      <div class="col-lg-2">
        <input type="radio"  name="Kit" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="Kit"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="Inventory">Track Inventory By Size and Color</label>
      <div class="col-lg-4">
        <input type="radio"  name="Inventory" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="Inventory"  class="input-xlarge"><span>Yes</span>
      </div>
    </div>
      <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="ColorOptionPrompt">Color Option Prompt</label>
      <div class="col-lg-4">
        <input type="text" id="colorOptionPrompt" name="ColorOptionPrompt" placeholder="" class="form-control color-option-prompt">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="SizeOptionPrompt">Size Option Prompt</label>
      <div class="col-lg-4">
        <input type="text" id="sizeOptionPrompt" name="SizeOptionPrompt" placeholder="" class="form-control size-option-prompt">
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2"  for="RequiresTextField">Requires Text Field</label>
      <div class="col-lg-4">
        <input type="radio"  name="RequiresTextField" checked class="input-xlarge"><span>No</span>
         <input type="radio"  name="RequiresTextField"  class="input-xlarge"><span>Yes</span>
         <p class="help-block">
             <span>Field Prompt </span><input type="text" id="fieldPrompt" name="FieldPrompt" placeholder="" class="form-control field-prompt">
         </p>
         <p class="help-block">
         <span>Max Length </span><input type="text" id="maxLength" name="MaxLength" placeholder="" class="form-control max-length">
         </p>
      </div>
    </div>
    
    <h3>Default Variant Information</h3>
    
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Price">Price</label>
      <div class="col-lg-4">
        <input type="text" id="price" name="Price" placeholder="" class="form-control price">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="SalePrice">Sale Price</label>
      <div class="col-lg-4">
        <input type="text" id="saleprice" name="SalePrice" placeholder="" class="form-control sale-price">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Weight">Weight</label>
      <div class="col-lg-4">
        <input type="text" id="weight" name="Weight" placeholder="" class="form-control weight">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Dimentions">Dimentions(Width x Height X Depth)</label>
      <div class="col-lg-10">
        <div class="col-lg-3"><input type="text" id="dimentionsWidth" name="DimentionsWidth" placeholder="" class="form-control dimentions-width">  X</div>
        <div class="col-lg-3"><input type="text" id="dimentionsHeight" name="DimentionsHeight" placeholder="" class="form-control dimentions-height">  X</div>
        <div class="col-lg-3"><input type="text" id="dimentionsDepth" name="DimentionsDepth" placeholder="" class="form-control dimentions-depth"></div>
      </div>
    </div>
    
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="CurrentInventory">Current Inventory</label>
      <div class="col-lg-4">
        <input type="text" id="currentInventory" name="CurrentInventory" placeholder="" class="form-control current-inventory">
      </div>
    </div>
    <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Colors">Colors</label>
      <div class="col-lg-4">
        <input type="text" id="colors" name="Colors" placeholder="" class="form-control colors">
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="ColorSKUModifier">Color SKU Modifiers</label>
      <div class="col-lg-4">
        <input type="text" id="colorModifier" name="ColorSKUModifier" placeholder="" class="form-control color-modifier">
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="Sizes">Sizes</label>
      <div class="col-lg-4">
        <input type="text" id="sizes" name="Sizes" placeholder="" class="form-control sizes">
      </div>
    </div>
     <div class="col-lg-12 form-group">
      <label class="col-lg-2" for="SizeSKUModifier">Size SKU Modifiers</label>
      <div class="col-lg-4">
        <input type="text" id="sizeModifier" name="SizeSKUModifier" placeholder="" class="form-control size-modifier">
      </div>
    </div>
  </fieldset>
</form>
            </div>            
            <div id="Product_Images" class="tab-pane"><div class="col-lg-12 form-group margin50">
    <label class="col-sm-2" for="FilenameOverride">Image Filename Override</label>
    <div class="col-sm-4">
      <input class="form-control" type="text" id="filenameOverride" placeholder="">
    </div>
  </div>
              <div class="col-lg-12 form-group">
                <label class="col-sm-2" for="exampleInputFile">Small</label>
                <div class="col-sm-4">
                <input type="file" id="small">
              </div>
              </div>
              
              <div class="col-lg-12 form-group">
                <label class="col-sm-2" for="exampleInputFile">Medium</label>
                <div class="col-sm-4">
                <input type="file" id="medium">
              </div>
              </div>
              
              <div class="col-lg-12 form-group">
                <label class="col-sm-2" for="exampleInputFile">Large</label>
                <div class="col-sm-4">
                <input type="file" id="large">
              </div>
              </div>
              
              
    </div>
            <div id="Product_Summary" class="tab-pane">
    <div class="col-lg-12 form-group margin50">
    <label class="col-sm-2" for="Summary">Summary</label>
    <div class="col-sm-4">
     <textarea class="form-control summary" id="summary" name="Summary"></textarea>
    </div>
  </div></div>
            <div id="Product_Desc" class="tab-pane">
    <div class="col-lg-12 form-group margin50">
    <label class="col-sm-2" for="Description">Description</label>
    <div class="col-sm-4">
     <textarea class="form-control description" id="description" name="Description"></textarea>
    </div>
  </div></div>
            <div id="Product_Mappings" class="tab-pane"><h4>Mappings</h4></div>
            <div id="Product_StoreMapping" class="tab-pane">  
 <div class="form-group">
            <div class="col-sm-12">
                    <label>Store</label>
            </div>
        </div>
 <div class="form-group">
            <div class="col-sm-12">
                <div class="col-sm-10">
                    <label>
                        <input type="checkbox" class="retail">Retail 
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <div class="col-sm-10">
                    <label>
                        <input type="checkbox" class="professional">Professionals 
                    </label>
                </div>
            </div>
        </div></div>
            <div id="Product_Options" class="tab-pane">  <div class="col-lg-12 form-group margin50">
<div class="col-lg-6">
    <label class="col-sm-4" for="RelatedProducts">Related Products</label>
    <div class="col-sm-8">
      <input class="form-control related-products" type="text" id="relatedProducts" name="RelatedProducts" >
    </div>
  </div>
  <div class="col-lg-4">
       <div class="container">
  <button type="button" class="btn productbtn collapsed width450" data-toggle="collapse" data-target="#related">Related Products Helper</button>
  <div id="related" class="collapse">
    Related Products Information
  </div>
</div>
  </div>
  </div>
  <div class="col-lg-12 form-group">
  <div class="col-lg-6">
    <label class="col-sm-4" for="UpsellProducts">Upsell Products</label>
    <div class="col-sm-8">
      <input class="form-control upsell-products" type="text" id="upsellProducts" name="UpsellProducts">
    </div>
  </div>
  <div class="col-lg-4">
       <div class="container">
  <button type="button" class="btn productbtn collapsed width450" data-toggle="collapse" data-target="#upsell">Upsell Products Helper</button>
  <div id="upsell" class="collapse">
    Upsell Products Information
  </div>
  </div>
   </div>
  </div>
  <div class="col-lg-12 form-group">
  <div class="col-lg-6">
    <label class="col-sm-4" for="RequiredProducts">Required Products</label>
    <div class="col-sm-8">
      <input class="form-control required-products" type="text" id="requiredProducts" name="RequiredProducts">
    </div>
  </div>
  <div class="col-lg-4">
       <div class="container">
  <button type="button" class="btn productbtn collapsed width450" data-toggle="collapse" data-target="#required">Required Products Helper</button>
  <div id="required" class="collapse">
   Required Products Information
  </div>
  </div>
   </div>
  </div>
  <div class="col-lg-12 form-group">
  <div class="col-lg-6">
    <label class="col-sm-4" for="UpsellProductDiscount">Upsell Product Discount Percent</label>
    <div class="col-sm-8">
      <input class="form-control upsell-product-discount" type="text" id="upsellProductDiscount" name="UpsellProductDiscount">
    </div>
  </div>
  </div>
  <div class="col-lg-12 form-group">
  <div class="col-lg-6">
    <label class="col-sm-4" for="SalePrompt">'On Sale' Prompt</label>
    <div class="col-sm-8">
      <select class="form-control sale-prompt">
          
      </select>
    </div>
    </div>
  </div>
</div>
        </div>
	</div>
<div>
    <div class="Product_Button col-lg-offset-6">
        <a href="#" class="btn btn-primary"><i class=""></i><strong>MANAGE VARIANTS</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>CLOSE</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>SAVE AND CLOSE</strong></a>
        <a href="#" class="btn btn-primary"><i class=""></i><strong>SAVE</strong></a>
    </div>
</div>
</div>
</body>
</html>