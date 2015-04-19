package com.btan.freeopenshopping.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.btan.freeopenshopping.dao.UserDao;
import com.btan.freeopenshopping.entities.User;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public User verifyUser(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.verifyUser(username, password);
	}

}
