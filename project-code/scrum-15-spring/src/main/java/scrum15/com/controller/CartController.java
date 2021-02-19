package scrum15.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

	@RequestMapping("/shopping-cart/form")
	public String cartForm() {
		
		return "/shopping-cart/form";
	}
	
}
