package com.btan.freeopenshopping.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.btan.freeopenshopping.entities.User;
import com.btan.freeopenshopping.services.*;


@Controller
@RequestMapping(value = "admin")
public class AdminController {

	@Autowired  
	UserService userService;  
	
	@RequestMapping(method = RequestMethod.GET)
	public String login(ModelMap modelMap) {
		modelMap.put("user", new User());
		modelMap.put("title", "Admin Login");
		return "adminlogin";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "user") User user, 
			ModelMap modelMap) {
		
		User objUser = userService.verifyUser(user.getUsername(), user.getPassword());
		if (objUser == null) {
			modelMap.put("user", new User("null", "null"));
		} else {
			modelMap.put("user", objUser);
		}
		modelMap.put("title", "Admin Login");
		return "adminlogin";
	}
}
