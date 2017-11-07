
package com.rl.roadlovebackend.dao;

import java.util.List;

import com.rl.roadlovebackend.model.CategoryModel;
import com.rl.roadlovebackend.model.ProductModel;

public interface ProductDao {
	
	public	boolean insertProduct(ProductModel productmodel);
	
	public List<ProductModel> allProduct();
	public boolean deleteProduct(int productId);
	public ProductModel displayProductEdit(int productId);
	public boolean updateProduct(ProductModel productmodel);
    public List<ProductModel> categorisedProductList(String categoryName);
    
}
