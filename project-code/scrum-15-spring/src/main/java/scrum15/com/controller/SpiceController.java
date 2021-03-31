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
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 1.29;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cardamom";
	}
	
	@RequestMapping("/spices/chilli-powder")
	public String chilli(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.57;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/chilli-powder";
	}
	
	@RequestMapping("/spices/cayenne-pepper")
	public String cayenne(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.54;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cayenne-pepper";
	}
	
	@RequestMapping("/spices/cinnamon")
	public String cinnamon(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.63;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cinnamon";
	}
	
	@RequestMapping("/spices/cloves")
	public String cloves(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.84;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/cloves";
	}
	
	@RequestMapping("/spices/ginger")
	public String ginger(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.66;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/ginger";
	}
	
	@RequestMapping("/spices/harissa")
	public String harissa(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.90;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/harissa";
	}
	
	@RequestMapping("/spices/paprika")
	public String paprika(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 0.51;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/paprika";
	}
	
	@RequestMapping("/spices/saffron")
	public String saffron(@RequestParam int quantity, @RequestParam float type, Model model) {
		
		model.addAttribute("quantity", quantity);
		
		String plural = "s";
		if (quantity == 1) {
			plural = "";
		}
		if (type == 1) {
			model.addAttribute("type", "Jar" + plural);
		} else {
			model.addAttribute("type", "Packet" + plural);
		}		
		
		double Pcard = 180.00;
		String price = String.format("%.02f", (Pcard * quantity) / type);
		model.addAttribute("price", price);
		
		return "spices/saffron";
	}
	
	
}
