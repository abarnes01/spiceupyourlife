package scrum15.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import scrum15.com.service.EmailService;

@RestController
public class EmailController {

	@Autowired
	EmailService emailService;
	
	@PostMapping("/miniStarterKit")
	public ModelAndView checkLogin(@RequestParam String delivery_address, @RequestParam String spice, @RequestParam String email) {
		if (delivery_address.equals("yes")) {
			emailService.sendEmail(email);
			return new ModelAndView("redirect:/subchoice");
		}
		else {
			return new ModelAndView("redirect:/subchoice");
		}
	}
}
