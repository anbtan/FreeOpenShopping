package com.btan.freeopenshopping.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.btan.freeopenshopping.entities.*;
import com.btan.freeopenshopping.services.UserService;
import com.btan.freeopenshopping.validator.UserValidator;

@Controller
@RequestMapping(value = "user")
public class UserController {
	
	@Autowired  
	UserService userService;
	
	/**
	 * Index page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("title", "Free Open Shopping");
		modelMap.put("cateTree", userService.getCategoryTree());
		modelMap.put("productList", userService.getAllProduct());
		return "index";
	}

	/**
	 * About Us page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "aboutus", method = RequestMethod.GET)
	public String aboutus(ModelMap modelMap) {
		modelMap.put("title", "About us");
		modelMap.put("cateTree", userService.getCategoryTree());
		return "aboutus";
	}
	
	/**
	 * Policy Privacy page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "policy", method = RequestMethod.GET)
	public String policy(ModelMap modelMap) {
		modelMap.put("title", "Policy Privacy");
		modelMap.put("cateTree", userService.getCategoryTree());
		return "policy";
	}
	
	/**
	 * Term and Condition page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "term", method = RequestMethod.GET)
	public String termCondition(ModelMap modelMap) {
		modelMap.put("title", "Terms and Conditions");
		modelMap.put("cateTree", userService.getCategoryTree());
		return "termcondition";
	}
	
	/**
	 * Shipping Method page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "shipping", method = RequestMethod.GET)
	public String shippingMethod(ModelMap modelMap) {
		modelMap.put("title", "Shipping Methods");
		modelMap.put("cateTree", userService.getCategoryTree());
		return "shippingmethod";
	}
	
	/**
	 * Contact Us page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "contactus", method = RequestMethod.GET)
	public String contactUs(ModelMap modelMap) {
		modelMap.put("title", "Contact Us");
		modelMap.put("cateTree", userService.getCategoryTree());
		return "contactus";
	}
	
	/**
	 * Sign Up page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup(ModelMap modelMap) {
		modelMap.put("objUser", new User());
		modelMap.put("title", "Sign up");
		return "signup";
	}
	
	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute(value = "objUser") @Valid User objUser, BindingResult bindingResult,
			ModelMap modelMap) {
		// Validate input data
		UserValidator userValidator = new UserValidator();
		userValidator.setUserService(userService);
		userValidator.validate(objUser, bindingResult);
		if (bindingResult.hasErrors()) {
			modelMap.put("title", "Sign up");
			return "signup";
		} else {
			boolean result = false;
			
			// register this user
			result = userService.registerUser(objUser);
			
			//if (!isExist) { // new user
				
			//} else {
				// the existing user
				//modelMap.put("message", "The user is existed");
				//modelMap.put("title", "Sign up");
				//modelMap.put("collapse", "");
				//return "signup";
			//}
			
			if (result) { // register user successfully
				// redirect to
				return "index";
			} else {
				modelMap.put("message", "Failed to register user. Please try again!");
				modelMap.put("title", "Sign up");
				//modelMap.put("collapse", "");
				return "signup";
			}
		}
	}
	
	/**
	 * Sign in page
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "signin", method = RequestMethod.GET)
	public String signin(ModelMap modelMap) {
		modelMap.put("objUser", new User("",""));
		// Hide alert
		modelMap.put("message", "");
		modelMap.put("collapse", "collapse");
		modelMap.put("title", "Sign in");
		return "signin";
	}
	
	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signin(@ModelAttribute(value = "objUser") User objUser,
			ModelMap modelMap) {
		boolean result = false;
		result = userService.login(objUser.getEmail(), objUser.getPassword(), 2); // Role 2: User
		if (result) {
			// redirect to index page
			modelMap.put("title", "Home");
			return "index";
		} else {
			modelMap.put("title", "Sign in");
			// Show alert
			modelMap.put("collapse", "");
			modelMap.put("message", "Login fail! Please try again!");
			return "signin";
		}
		
	}
	
	/**
	 * Product Detail page
	 * @return
	 */
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail() {
		return "detail";
	}
	
	
	@RequestMapping(value = "wishlist", method = RequestMethod.GET)
	public String wishlist() {
		return "wishlist";
	}
	
	@RequestMapping(value = "shoppingcart", method = RequestMethod.GET)
	public String shoppingcart() {
		return "shoppingcart";
	}
	
	@RequestMapping(value = "checkout", method = RequestMethod.GET)
	public String checkout() {
		return "checkout";
	}
	
	
	@RequestMapping(value="login", method = RequestMethod.GET)
    public String loginError(@RequestParam(value = "error", required = false) String error,
			ModelMap modelMap){
		if (error != null) {
			modelMap.put("error", "Invalid username and password!");
		}
        return "login";
    }
}
