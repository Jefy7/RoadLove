package com.rl.roadlovebackend.dao;

import java.util.List;

import com.rl.roadlovebackend.model.CategoryModel;

public interface CategoryDao {

	public	boolean insertCategory(CategoryModel categorymodel);
	
	public List<CategoryModel> allCategory();
}
