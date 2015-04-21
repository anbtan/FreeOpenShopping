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
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String login(ModelMap modelMap) {
		modelMap.put("objUser", new User());
		modelMap.put("title", "Admin Login");
		return "adminlogin";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "objUser") User objUser, 
			ModelMap modelMap) {
		boolean result = userService.login(objUser.getEmail(), objUser.getPassword(), 1);
		if (result) {
			modelMap.put("title", "FreeOpenShopping Admin");
			return "dashboard";
		}
		modelMap.put("title", "Admin Login");
		return "adminlogin";
	}
	
	/**
	 * Category Management page
	 */
	@RequestMapping(value = "categorymgr", method = RequestMethod.GET)
	public String categoryMgr(ModelMap modelMap) {
		modelMap.put("title", "FreeOpenShopping Admin - Category Management");
		modelMap.put("cateList", adminService.getAll());
		return "admincategory";
	}
	
	/**
	 * Product Management page
	 */
	@RequestMapping(value = "productmgr", method = RequestMethod.GET)
	public String productMgr(ModelMap modelMap) {
		modelMap.put("title", "FreeOpenShopping Admin - Product Management");
		return "adminproduct";
	}
	
	/**
	 * Order Management page
	 */
	@RequestMapping(value = "ordermgr", method = RequestMethod.GET)
	public String orderMgr(ModelMap modelMap) {
		modelMap.put("title", "FreeOpenShopping Admin - Order Management");
		return "adminorder";
	}
	
	/**
	 * User Management page
	 */
	@RequestMapping(value = "usermgr", method = RequestMethod.GET)
	public String userMgr(ModelMap modelMap) {
		modelMap.put("title", "FreeOpenShopping Admin - User Management");
		return "adminuser";
	}
}
