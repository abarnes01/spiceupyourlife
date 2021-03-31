package scrum15.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import scrum15.com.repo.OrdersRepo;
import scrum15.com.repo.SpiceOrdersRepo;

@Controller
public class viewOrdersController {
	
	@Autowired
	private OrdersRepo oRepo;
	@Autowired
	private SpiceOrdersRepo soRepo;
	
	@RequestMapping("/orders")
	public String viewOrders(Model model) {
		model.addAttribute("orders", oRepo.findAll());
		model.addAttribute("spice orders", soRepo.findAll());
		return "orders";
	}

}
