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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import scrum15.com.model.BasketItem;
import scrum15.com.model.Customer;
import scrum15.com.model.Login;
import scrum15.com.repo.BasketItemRepo;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.repo.LoginRepo;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;
import scrum15.com.Scrum15SpringApplication;









@Controller
public class AccountController {

	@Autowired
	private CustomerRepo cRepo;
	
	@Autowired
	private LoginRepo lRepo;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private BasketItemRepo biRepo;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new CustomerValidator(cRepo));
	}
	
	@RequestMapping("/checkout")
	public String checkout(Model model) {
		Iterable<BasketItem> basketItem = biRepo.findAll();
		double total = 0;
		int count = 0;
		for (BasketItem bi : basketItem) {
			total += bi.getAmount();
			count += 1;
		}
		model.addAttribute("newGuest", new Customer());
		model.addAttribute("total", total);
		model.addAttribute("count", count);
		model.addAttribute("spiceList", basketItem);
		return "shopping-cart/checkout";
	}

		@RequestMapping("/subchoice")
	public String picksub() {
		return "signin/registerchoice";
	}
	
	@RequestMapping(value = "/standard")
	public String newCustomer(Model model) {
		model.addAttribute("newStandard", new Customer());
		return "signin/standardForm";
	}
	
	@PostMapping("/addStandard")
	public String addCustomer(@Valid @ModelAttribute("newStandard") Customer customer, BindingResult result, RedirectAttributes redirectAttributes, @RequestParam String cancel) {
		customer.setGuest(false);
		customer.setPremium(false);
		customer.setCard_name(null);
		customer.setCard_number(null);
		customer.setExpiry_date(null);
		customer.setSecurity_code(null);
		customer.setPassword(passwordEncoder.encode(customer.getPassword()));
			if (result.hasErrors()) {
				return "signin/standardForm";
			}
			if (cancel.equals("1")) {
				cRepo.save(customer);
				return "redirect:/";
			}
			else {
				cRepo.save(customer);
				redirectAttributes.addFlashAttribute("customerId", customer.getId());
				redirectAttributes.addFlashAttribute("streetName", customer.getStreet_name());
				redirectAttributes.addFlashAttribute("city", customer.getCity());
				redirectAttributes.addFlashAttribute("postcode", customer.getPostcode());
				redirectAttributes.addFlashAttribute("country", customer.getCountry());
				return "redirect:/StarterKit";
			}
		}
	
	@RequestMapping("/login")
	public String loginCustomer() {
		return "signin/signin";
	}
	
	@RequestMapping(value = "/error-login", method = RequestMethod.GET)
	public String invalidLogin(Model model) {
		model.addAttribute("error", true);
		return "signin/signin";
	}

	
	@RequestMapping(value = "/success-login", method = RequestMethod.GET)
	public String successLogin(Principal principal) {
		Customer user = cRepo.findByEmail(principal.getName());
		if (user == null) {
			return "signin/denied";
		}
		Login login = new Login();
		login.setEmail(user.getEmail());
		login.setPassword(user.getPassword());
		login = lRepo.save(login);
		return "redirect:/";
	}

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public String denied() {
		return "signin/denied";
	}
	
}
