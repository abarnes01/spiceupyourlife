package scrum15.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;

import scrum15.com.Scrum15SpringApplication;
import scrum15.com.model.Customer;
import scrum15.com.model.Payment;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.repo.PaymentRepo;

@Controller
public class PremiumController {

	@Autowired
	private CustomerRepo cRepo;
	
	@Autowired
	private PaymentRepo pRepo;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new PremiumValidator(cRepo));
	}
	
	@RequestMapping(value = "/premium")
	public String newGuest(Model model) {
		model.addAttribute("newPremium", new Customer());
		return "signin/premiumForm";
	}
	
	@PostMapping("/addPremium")
	public String addGuest(@Valid @ModelAttribute("newPremium") Customer customer, BindingResult result) {
		customer.setGuest(false);
		customer.setPremium(true);
		customer.setPassword(passwordEncoder.encode(customer.getPassword()));
		if (result.hasErrors()) {
			return "signin/premiumForm";
		}
		cRepo.save(customer);
		Payment premium = new Payment();
		premium.setCard_name(customer.getCard_name());
		premium.setCard_number(customer.getCard_number());
		premium.setExpiry_date(customer.getExpiry_date());
		premium.setSecurity_code(customer.getSecurity_code());
		premium.setAmount(5.00);
		premium = pRepo.save(premium);
		return "redirect:/";
	} 
}
