package com.rl.roadlovebackend.dao;

import java.util.List;

import com.rl.roadlovebackend.model.CategoryModel;

public interface CategoryDao {

	public	boolean insertCategory(CategoryModel categorymodel);
	
	public List<CategoryModel> allCategory();
	
	public boolean deleteCategory(int categoryId);
	
	public CategoryModel displayCategoryEdit(int categoryID);
	
	public boolean updateCategory(CategoryModel categorymodel);
	
	
	
}
