package com.rl.roadlovebackend.model;

import javax.persistence.*;


@Entity
public class CategoryModel {
	@Id
	@Column(nullable=false)
	private String categryID;
	private String categoryName;
	
	public String getCategryID() {
		return categryID;
	}

	public void setCategryID(String categryID) {
		this.categryID = categryID;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	
	
}

