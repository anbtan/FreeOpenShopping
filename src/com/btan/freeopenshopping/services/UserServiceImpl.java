package com.btan.freeopenshopping.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.btan.freeopenshopping.dao.UserDao;
import com.btan.freeopenshopping.entities.User;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public User verifyUser(String email, String password) {
		// TODO Auto-generated method stub
		return userDao.verifyUser(email, password);
	}

	@Override
	public boolean registerUser(User user) {
		// TODO Auto-generated method stub
		return userDao.registerUser(user);
	}

	@Override
	public boolean isExistedUser(String email) {
		// TODO Auto-generated method stub
		return userDao.isExistedUser(email);
	}

	@Override
	public boolean login(String email, String password, int role) {
		// TODO Auto-generated method stub
		return userDao.login(email, password, role);
	}

}
