package com.btan.freeopenshopping.services;

import com.btan.freeopenshopping.entities.*;

public interface UserService {
	public User verifyUser(String email, String password);
	public boolean registerUser(User user);
	public boolean isExistedUser(String email);
	public boolean login(String email, String password, int role);
	
}
