package com.btan.freeopenshopping.services;

import java.util.HashMap;
import java.util.List;

import com.btan.freeopenshopping.entities.*;

public interface UserService {
	public User verifyUser(String email, String password);
	public boolean registerUser(User user);
	public boolean isExistedUser(String email);
	public boolean login(String email, String password, int role);
	
	public List<Category> getAllCategories();
	
	public List<Category> getCategoriesByLevel(int level);
	
	public HashMap<Category, List<Category>> getCategoryTree();
	
	public List<Product> getAllProduct();
	
	public User getUserByUsername(String username);
	
}
