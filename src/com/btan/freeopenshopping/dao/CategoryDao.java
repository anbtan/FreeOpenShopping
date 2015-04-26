package com.btan.freeopenshopping.dao;

import java.util.HashMap;
import java.util.List;

import com.btan.freeopenshopping.entities.*;

public interface CategoryDao {
	public List<Category> getAll();
	
	public boolean addCategory(Category cate);
	
	/**
	 * Get list of categories based on the category level
	 * @param level
	 * @return
	 */
	public List<Category> getCategoriesByLevel(int level);
	
	public List<Category> getChildCategories(int categoryId);
	
	public HashMap<Category, List<Category>> getCategoryTree();
}
