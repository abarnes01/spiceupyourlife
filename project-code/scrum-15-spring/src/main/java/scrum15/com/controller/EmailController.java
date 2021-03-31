package scrum15.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.service.EmailService;

@RestController
public class EmailController {

	@Autowired
	private CustomerRepo cRepo;
	
	@Autowired
	EmailService emailService;
	
	@PostMapping("/miniStarterKit")
	public ModelAndView sendEmail(@RequestParam String spice, @RequestParam String email, @RequestParam Integer id) {
		Customer customer = cRepo.findById(id).orElse(null);
		String streetname = customer.getStreet_name();
		String city = customer.getCity();
		String postcode = customer.getPostcode();
		String country = customer.getCountry();
		emailService.sendEmail(email, spice, streetname, city, postcode, country);
		return new ModelAndView("redirect:/");
	}
	@PostMapping("/deliveryAddress")
	public ModelAndView deliveryAddress(@RequestParam String spice2, @RequestParam String streetname, @RequestParam String city, @RequestParam String postcode, @RequestParam String country, @RequestParam String email, @RequestParam Integer id) {
		Customer customer = cRepo.findById(id).orElse(null);
		customer.setStreet_name(streetname);
		customer.setCity(city);
		customer.setPostcode(postcode);
		customer.setCountry(country);
		customer = cRepo.save(customer);
		emailService.sendEmail(email, spice2, streetname, city, postcode, country);
		return new ModelAndView("redirect:/");
	}
}