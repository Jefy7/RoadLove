package com.rl.roadlovebackend.dao;

import java.util.List;

import com.rl.roadlovebackend.model.CartModel;

public interface CartDAO {
	
	public boolean addProductTocart(CartModel cartModel);
	
	public CartModel ifProductExistsForUser(String emailId,int productId);
	
	public boolean updateCart(CartModel cartModel);
		
	public List<CartModel> userCart(String userId);

	public double cartGrandTotal(String userId);
}
