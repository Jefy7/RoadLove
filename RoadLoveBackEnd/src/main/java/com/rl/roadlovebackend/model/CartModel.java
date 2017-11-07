package com.rl.roadlovebackend.model;

import javax.persistence.*;


@Entity
public class CartModel {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int OrderID;	
	private String cartID;
	private int productID;
	private String productname;
	private double productprize;
	private int items=1;
	private double total;
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	private boolean status;
	
	public int getOrderID() {
		return OrderID;
	}
	public void setOrderID(int orderID) {
		OrderID = orderID;
	}
	public String getCartID() {
		return cartID;
	}
	public void setCartID(String cartID) {
		this.cartID = cartID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public double getProductprize() {
		return productprize;
	}
	public void setProductprize(double productprize) {
		this.productprize = productprize;
	}
	public int getItems() {
		return items;
	}
	public void setItems(int items) {
		this.items = items;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
}
