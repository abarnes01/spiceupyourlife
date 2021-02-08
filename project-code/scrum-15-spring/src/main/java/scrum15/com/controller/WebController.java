package scrum15.com.controller;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WebController {

	@RequestMapping(value = "/")
	public String index() {	
		return "home";
	}
	
	@RequestMapping(value = "recipes")
	public String spiceMenu(@RequestParam String recipe, Model model) {
		Optional<Recipe> recipe = rRepo.findByName(recipe);
		if (recipe.isEmpty()) {
			return "redirect:/";
		}
		model.addAttribute("reports", recipe.get().getReports());
		model.addAttribute("agent", recipe);
		return "recipeList";
	}
	
}
