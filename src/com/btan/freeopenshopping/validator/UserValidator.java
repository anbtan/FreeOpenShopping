package com.btan.freeopenshopping.validator;

import org.springframework.beans.factory.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.btan.freeopenshopping.entities.User;
import com.btan.freeopenshopping.services.UserService;

public class UserValidator implements Validator {
  
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return User.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		User user = (User)arg0;
		
		// Check the existing of the username
		if (userService.getUserByUsername(user.getUsername()) != null) {
			arg1.rejectValue("username", "User.UserName.Exists");
		}
		
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	

}
