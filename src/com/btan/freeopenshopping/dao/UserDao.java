package com.btan.freeopenshopping.dao;

import com.btan.freeopenshopping.entities.*;

public interface UserDao {
	public boolean login(String email, String password, int role);
	
	public User verifyUser(String email, String password);
	
	// Register a new user
	public boolean registerUser(User user);
	
	// Check the existing user
	public boolean isExistedUser(String email);
}
