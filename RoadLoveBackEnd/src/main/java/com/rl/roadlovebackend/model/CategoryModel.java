package com.rl.roadlovebackend.model;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;


@Entity
public class CategoryModel {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryID;
	private String categoryName;
	@Transient
	private MultipartFile categoryImage;
	

	public int getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	public MultipartFile getCategoryImage() {
		return categoryImage;
	}

	public void setCategoryImage(MultipartFile categoryImage) {
		this.categoryImage = categoryImage;
	}
	
	
}

