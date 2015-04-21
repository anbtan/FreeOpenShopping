package com.btan.freeopenshopping.dao;

import java.util.List;

import com.btan.freeopenshopping.entities.*;

public interface CategoryDao {
	public List<Category> getAll();
	
	public boolean addCategory(Category cate);
}
