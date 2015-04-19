package com.btan.freeopenshopping.dao;

import com.btan.freeopenshopping.entities.*;

public interface UserDao {
	public User verifyUser(String username, String password);
}
