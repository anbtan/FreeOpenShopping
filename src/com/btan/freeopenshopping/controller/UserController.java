package com.btan.freeopenshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "user")
public class UserController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("title", "Home");
		return "index";
	}

	@RequestMapping(value = "aboutus", method = RequestMethod.GET)
	public String aboutus(ModelMap modelMap) {
		modelMap.put("title", "About us");
		return "aboutus";
	}
	
	@RequestMapping(value = "news", method = RequestMethod.GET)
	public String news(ModelMap modelMap) {
		modelMap.put("title", "News");
		return "news";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup(ModelMap modelMap) {
		modelMap.put("title", "Sign up");
		return "signup";
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.GET)
	public String signin(ModelMap modelMap) {
		modelMap.put("title", "Sign in");
		return "signin";
	}
}
