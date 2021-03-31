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

import java.util.ArrayList;

import javax.validation.Valid;

import scrum15.com.Scrum15SpringApplication;
import scrum15.com.model.BasketItem;
import scrum15.com.model.Customer;
import scrum15.com.model.Orders;
import scrum15.com.model.Payment;
import scrum15.com.repo.BasketItemRepo;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.repo.OrdersRepo;
import scrum15.com.repo.PaymentRepo;

@Controller
public class GuestController {
	
	@Autowired
	private PaymentRepo pRepo;
	
	@Autowired
	private OrdersRepo oRepo;

	@Autowired
	private CustomerRepo cRepo;
	
	@Autowired
	private BasketItemRepo biRepo;
	
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
	public String addGuest(@Valid @ModelAttribute("newGuest") Customer customer, BindingResult result, @RequestParam String total, Model model) {
		customer.setGuest(true);
		customer.setPremium(false);
		customer.setPassword(null);
		double amount = Double.parseDouble(total);
		if (result.hasErrors()) {
			Iterable<BasketItem> basketItem = biRepo.findAll();
			double price = 0;
			int count = 0;
			for (BasketItem bi : basketItem) {
				total += bi.getAmount();
				count += 1;
			}
			model.addAttribute("total", price);
			model.addAttribute("count", count);
			model.addAttribute("spiceList", basketItem);
			return "shopping-cart/checkout";
		}
		cRepo.save(customer);
		Payment payment = new Payment();
		payment.setCard_name(customer.getCard_name());
		payment.setCard_number(customer.getCard_number());
		payment.setExpiry_date(customer.getExpiry_date());
		payment.setSecurity_code(customer.getSecurity_code());
		payment.setAmount(amount);
		pRepo.save(payment);
		
		Orders order = new Orders();
		order.setOrder_date(java.time.LocalDate.now());
		order.setShipment_name("SHIP-003");
		order.setShipment_street_name(customer.getStreet_name());
		order.setShipment_city(customer.getCity());
		order.setShipment_postcode(customer.getPostcode());
		order.setShipment_country(customer.getCountry());
		oRepo.save(order);
		
		customer.setOrders(new ArrayList<>());
		customer.getOrders().add(order);
		cRepo.save(customer);
		
		payment.setOrders(order);
		pRepo.save(payment);
		
		order.setCustomer(customer);
		oRepo.save(order);
		biRepo.deleteAll();
		return "signin/thank";
	}
}
