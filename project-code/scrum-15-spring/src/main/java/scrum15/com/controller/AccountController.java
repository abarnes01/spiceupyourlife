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
public class AccountController {

	@Autowired
	private CustomerRepo cRepo;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new CustomerValidator(cRepo));
	}
	
	@RequestMapping("/checkout")
	public String checkout() {
		return "shopping-cart/checkout";
	}
	
	@RequestMapping(value = "/register")
	public String newCustomer(Model model) {
		model.addAttribute("newAcc", new Customer());
		return "signin/registerForm";
	}
	
	
	@PostMapping("/addCustomer")
	public String addCustomer(@Valid @ModelAttribute("newAcc") Customer customer, BindingResult result) {
		customer.setGuest(false);
			if (result.hasErrors()) {
				return "signin/registerForm";
			}
			cRepo.save(customer);
			return "redirect:/";
		}	
	
	@RequestMapping("/login")
	public String loginCustomer() {
		return "signin/signin";
	}
	
	@RequestMapping("/checkLogin")
	public String checkLogin(@Valid @RequestParam String email, @RequestParam String password) {
		Customer em = cRepo.findByEmail(email);
		if (cRepo.existsCustomerByEmail(email)) {
			if (em.getPassword().equals(password)) {
				return "redirect:/";
			}
			else {
				return "signin/signin2";
		}
		}
		else {
			return "signin/signin2";
		}
		
	}
}
