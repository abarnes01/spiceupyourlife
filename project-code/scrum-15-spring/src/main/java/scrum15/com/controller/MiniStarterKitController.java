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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import scrum15.com.Scrum15SpringApplication;
import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.service.EmailService;

@Controller
public class MiniStarterKitController {
	
	@Autowired
	private CustomerRepo cRepo;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.addValidators(new CustomerValidator(cRepo));
	}
	
	@RequestMapping("/StarterKit")
	public String miniStaterKit(Model model) {
		return "miniStarterKit";
	}
}
