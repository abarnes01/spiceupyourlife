package scrum15.com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import scrum15.com.model.Customer;
import scrum15.com.model.MiniStarterKit;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.repo.MiniStarterKitRepo;
import scrum15.com.service.EmailService;

@RestController
public class EmailController {
	
	@Autowired
	private MiniStarterKitRepo mskRepo;
	
	@Autowired
	EmailService emailService;
	
	@PostMapping("/miniStarterKit")
	public ModelAndView sendEmail(@ModelAttribute("miniStarterKit") MiniStarterKit msk, @RequestParam int mskId) {
		MiniStarterKit newMsk = mskRepo.findById(mskId).orElse(null);
		newMsk.setSpice(msk.getSpice());
		newMsk = mskRepo.save(newMsk);
		emailService.sendEmail(newMsk.getEmail(), newMsk.getSpice(), newMsk.getStreet_name(), newMsk.getCity(), newMsk.getPostcode(), newMsk.getCountry());
		return new ModelAndView("redirect:/");
	}
	@PostMapping("/deliveryAddress")
	public ModelAndView deliveryAddress(@ModelAttribute("deliveryAddress") MiniStarterKit msk, @RequestParam int mskId) {
		MiniStarterKit newMsk = mskRepo.findById(mskId).orElse(null);
		newMsk.setSpice(msk.getSpice());
		newMsk.setStreet_name(msk.getStreet_name());
		newMsk.setCity(msk.getCity());
		newMsk.setPostcode(msk.getPostcode());
		newMsk.setCountry(msk.getCountry());
		newMsk = mskRepo.save(newMsk);
		emailService.sendEmail(newMsk.getEmail(), newMsk.getSpice(), newMsk.getStreet_name(), newMsk.getCity(), newMsk.getPostcode(), newMsk.getCountry());
		return new ModelAndView("redirect:/");
	}
}