package com.example.controller;

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
	
	@RequestMapping("/chilli-powder")
	public String chilli(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 2.69;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/chilli-powder";
	}
	
	@RequestMapping("/cayenne-pepper")
	public String cayenne(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 2.35;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cayenne-pepper";
	}
	
	@RequestMapping("/cinnamon")
	public String cinnamon(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 1.15;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cinnamon";
	}
	
	@RequestMapping("/cloves")
	public String cloves(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 2.29;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cloves";
	}
	
	@RequestMapping("/ginger")
	public String ginger(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 1.75;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/ginger";
	}
	
	@RequestMapping("/harissa")
	public String harissa(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 4.49;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/harissa";
	}
	
	@RequestMapping("/paprika")
	public String paprika(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 2.67;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/paprika";
	}
	
	@RequestMapping("/saffron")
	public String saffron(@RequestParam int quantity, @RequestParam float type, Model model) {
		
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
		
		double Pcard = 35.99;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/saffron";
	}
	
	
}
