package com.example.controller;

import java.math.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RecipeController {
	
	//default
	
	@RequestMapping("/recipe_list")
	public String home() {
		return "recipe_list";
	}
	
	//for testing
	
	@RequestMapping("/")
	public String recipe() {
		return "recipe_list";
	}
	
	//allows page to correctly convert to Oz and display it neatly
	
	public String makeOz(BigDecimal decimalOz) {
		int quarters = decimalOz.multiply(new BigDecimal("4")).setScale(0, RoundingMode.HALF_UP).intValue();
        int ounces = quarters / 4;
        int spare = quarters - (ounces * 4);
        
        
        if (spare == 0) {
        	return String.valueOf(ounces) + " oz";
        } else if (spare == 1) {
        	return String.valueOf(ounces) + "&#188 oz";	
        }
        else if (spare == 2) {
        	return String.valueOf(ounces) + "&#189 oz";	
        }
        else {
        	return String.valueOf(ounces) + "&#190 oz";
        }
	}
	
	@RequestMapping("/apple-pie")
	public String pie(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {23,100,67,42};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {23,100,67,42};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 8) {
			model.addAttribute("a", 2);
			model.addAttribute("b", 3);
			model.addAttribute("c", 3);
			model.addAttribute("d", 3);
			model.addAttribute("e", 2);
		} else {
			model.addAttribute("a", 1);
			model.addAttribute("b", 2);
			model.addAttribute("c", 2);
			model.addAttribute("d", 2);
			model.addAttribute("e", 1);
		}
		
		return "apple-pie";
	}
	
	@RequestMapping("/chilli-bean-stir-fry")
	public String stir(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {15,5,50,38,100};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {15,5,50,38,100};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 8) {
			model.addAttribute("a", 3);
			model.addAttribute("b", 3);
			model.addAttribute("c", 3);
			model.addAttribute("d", 2);
			model.addAttribute("e", 2);
			model.addAttribute("f", "2 red onions");
		} else {
			model.addAttribute("a", 2);
			model.addAttribute("b", 2);
			model.addAttribute("c", 2);
			model.addAttribute("d", 1);
			model.addAttribute("e", 1);
			model.addAttribute("f", "1 red onion");
		}
		
		return "chilli-bean-stir-fry";
	}
	
	@RequestMapping("/chilli-con-carne")
	public String chilli(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {113,100,100,50};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {113,100,100,50};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", "1 large red onion");
			model.addAttribute("b", 3);
			model.addAttribute("c", "1 red pepper");
			model.addAttribute("d", 2);
			model.addAttribute("e", 1);
			model.addAttribute("f", 1);
			model.addAttribute("g", 200);
			
		} else if (servings == 6) {
			model.addAttribute("a", "2 large red onions");
			model.addAttribute("b", 4);
			model.addAttribute("c", "1 large red pepper");
			model.addAttribute("d", 3);
			model.addAttribute("e", 2);
			model.addAttribute("f", 1);
			model.addAttribute("g", 300);
		} else {
			model.addAttribute("a", "2 large red onions");
			model.addAttribute("b", 5);
			model.addAttribute("c", "2 red peppers");
			model.addAttribute("d", 4);
			model.addAttribute("e", 2);
			model.addAttribute("f", 2);
			model.addAttribute("g", 400);
		}
		
		return "chilli-con-carne";
	}
	
	@RequestMapping("/vegetable-biryani")
	public String biryani(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {100,50,13,5,75,50,50,50,50};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {100,50,13,5,75,50,50,50,50};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", 2);
			model.addAttribute("b", 1);
			model.addAttribute("c", 3);
			model.addAttribute("d", 4);

		} else if (servings == 6) {
			model.addAttribute("a", 3);
			model.addAttribute("b", 2);
			model.addAttribute("c", 5);
			model.addAttribute("d", 6);

		} else {
			model.addAttribute("a", 4);
			model.addAttribute("b", 3);
			model.addAttribute("c", 6);
			model.addAttribute("d", 8);
		}
		
		return "vegetable-biryani";
	}
	
	@RequestMapping("/green-peppercorn-and-lemongrass-coconut-broth")
	public String broth(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {9,17,17};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {9,17,17};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", 3);
			model.addAttribute("b", 10);
			model.addAttribute("c", 250);
			model.addAttribute("d", 4);

		} else if (servings == 6) {
			model.addAttribute("a", 4);
			model.addAttribute("b", 15);
			model.addAttribute("c", 400);
			model.addAttribute("d", 6);

		} else {
			model.addAttribute("a", 5);
			model.addAttribute("b", 20);
			model.addAttribute("c", 550);
			model.addAttribute("d", 8);
		}
		
		return "green-peppercorn-and-lemongrass-coconut-broth";
	}
	
	@RequestMapping("/mackerel-recheado")
	public String broth(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {3};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {3};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", 1);
			model.addAttribute("b", 2);
			model.addAttribute("c", 2);

		} else if (servings == 6) {
			model.addAttribute("a", 1);
			model.addAttribute("b", 2);
			model.addAttribute("c", 3);

		} else {
			model.addAttribute("a", 2);
			model.addAttribute("b", 3);
			model.addAttribute("c", 4);
		}
		
		return "mackerel-recheado";
	}

	@RequestMapping("/moroccan-style-soup")
	public String broth(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {100};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {100};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", 1);
			model.addAttribute("b", 2);
			model.addAttribute("c", 600);

		} else if (servings == 6) {
			model.addAttribute("a", 2);
			model.addAttribute("b", 3);
			model.addAttribute("c", 800);

		} else {
			model.addAttribute("a", 2);
			model.addAttribute("b", 4);
			model.addAttribute("c", 1000);
		}
		
		return "moroccan-style-soup";
	}

	@RequestMapping("/potato-rosti-quiche")
	public String broth(@RequestParam int servings, @RequestParam int units, Model model) {

		model.addAttribute("choice1", servings);
		
		if (units == 1)	{
			model.addAttribute("choice2", "Metric");
			String unit = "g";
			int[] quantities = {54,7,25};
			for(int i=0; i<quantities.length; i++) {
				 quantities[i] = ((quantities[i] * servings) / 10) * 10;
		         model.addAttribute("ing_"+String.valueOf(i+1), quantities[i] + unit);
		    }
		}	else if (units == 2) {
			model.addAttribute("choice2", "Imperial");
			double[] quantities = {54,7,25};
			for(int i=0; i<quantities.length; i++) {
				quantities[i] = quantities[i] * servings;
		    }
			for(int i=0; i<quantities.length; i++) {
				BigDecimal bd = BigDecimal.valueOf(quantities[i] * 0.0352733686);
		        model.addAttribute("ing_"+String.valueOf(i+1), makeOz(bd));
		    }
		}
		if (servings == 4) {
			model.addAttribute("a", " ");
			model.addAttribute("b", 1);
			model.addAttribute("c", 100);

		} else if (servings == 6) {
			model.addAttribute("a", " large ");
			model.addAttribute("b", 1);
			model.addAttribute("c", 150);

		} else {
			model.addAttribute("a", " large ");
			model.addAttribute("b", 2);
			model.addAttribute("c", 200);
		}
		
		return "potato-rosti-quiche";
	}

}
