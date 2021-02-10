package scrum15.com.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WebController {

	
	
	@RequestMapping(value = "/")
	public String index() {	
		return "home";
	}
	
	@RequestMapping(value = "about")
	public String aboutPage() {
		return "about";
	}
	
	@RequestMapping(value = "contact")
	public String contactPage() {
		return "contact";
	}
	
}
