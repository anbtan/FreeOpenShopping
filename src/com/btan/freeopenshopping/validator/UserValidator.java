package com.btan.freeopenshopping.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.btan.freeopenshopping.entities.User;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return User.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		User user = (User)arg0;
		if (user.getEmail().equalsIgnoreCase("admin")) {
			arg1.rejectValue("email", "user.username.exists");
		}
		
	}

}
