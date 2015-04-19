package controller;

import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "mytemplate")
public class MyTemplate {

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

}
