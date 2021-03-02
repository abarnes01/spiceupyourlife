package scrum15.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.validation.Valid;

import scrum15.com.Scrum15SpringApplication;
import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;

@Controller
public class GuestController {

	@Autowired
	private CustomerRepo cRepo;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new GuestValidator(cRepo));
	}
	
	@RequestMapping(value = "/guest")
	public String newGuest(Model model) {
		model.addAttribute("newGuest", new Customer());
		return "signin/guestForm";
	}
	
	@PostMapping("/addGuest")
	public String addGuest(Model model, @Valid @ModelAttribute Customer customer, BindingResult result) {
		customer.setGuest(true);
		customer.setPassword(null);
		if (result.hasErrors()) {
			model.addAttribute("newGuest", new Customer());
			return "signin/guestForm";
		}
		cRepo.save(customer);
		return "redirect:/";
	}
}
