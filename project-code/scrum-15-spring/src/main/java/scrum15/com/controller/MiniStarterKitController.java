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

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import scrum15.com.Scrum15SpringApplication;
import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;

@Controller
public class MiniStarterKitController {

	@Autowired
	private CustomerRepo cRepo;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new CustomerValidator(cRepo));
	}
	
	@RequestMapping("/StarterKit")
	public String miniStaterKit(HttpServletRequest request, Model model) {
		Customer standardCustomer = (Customer)model.asMap().get("standardCustomer");
		model.addAttribute("newStandard", standardCustomer);
		return "miniStarterKit";
	}
	@RequestMapping("/miniStarterKit")
	public String checkLogin(@Valid @RequestParam String delivery_address, @RequestParam String spice) {
		if (delivery_address == "yes") {
			return "redirect:/";
		}
		else {
			return "redirect:/standardForm";
		}
	}
}
