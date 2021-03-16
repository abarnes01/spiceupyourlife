package scrum15.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpiceController {
	
	@RequestMapping("/cardamom")
	public String cardamom(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Bag" + plural);
		}		
		
		double Pcard = 3.49;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cardamom";
	}
	
	
}
