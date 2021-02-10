package scrum15.com;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import scrum15.com.model.Customer;
import scrum15.com.model.Orders;
import scrum15.com.model.Payment;
import scrum15.com.model.Recipe;
import scrum15.com.model.Spice;
import scrum15.com.repo.CustomerRepository;
import scrum15.com.repo.OrdersRepository;
import scrum15.com.repo.PaymentRepository;
import scrum15.com.repo.RecipeRepository;
import scrum15.com.repo.SpiceRepository;

@SpringBootApplication
public class Scrum15SpringApplication implements ApplicationRunner{

	@Autowired
	private CustomerRepository cRepo;
	
	@Autowired 
	private OrdersRepository oRepo;
	
	@Autowired
	private PaymentRepository pRepo;
	
	@Autowired
	private RecipeRepository rRepo;
	
	@Autowired
	private SpiceRepository sRepo;

	
	public static void main(String[] args) {
		SpringApplication.run(Scrum15SpringApplication.class, args);
	}


	@Override
	public void run(ApplicationArguments args) throws Exception {
		// TODO Auto-generated method stub

		//Recipe instances
		Recipe r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11;
		r1 = new Recipe();
		r1.setName("Chilli con carne");
		r1.setServings(4);
		r1.setTime("00:15:00");
		r1.setAuthor("Sunil Vijayakar");
		r1 = rRepo.save(r1);
		
		//Spice instances
		Spice s1, s2, s3, s4, s5, s7, s8, s9, s10, s11;
		s1 = new Spice();
		s1.setName("Chilli Powder");
		s1.setDescription("Dried, pulverized fruit of one or more varieties of chilli pepper, sometimes with the addition of other spices");
		s1.setWeight(500);
		s1.setUnit_price(3.49);
		s1 = sRepo.save(s1);
		
		//many to many relationship - Recipe to Spice
		s1.setRecipe(new ArrayList<>());
		s1.getRecipe().add(r1);
		s1 = sRepo.save(s1);
		
		//Orders instances
		Orders o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11;
		o1 = new Orders();
		o1.setOrder_date("2021-02-10");
		o1.setShipment_name("SHIP002");
		o1.setShipment_street_name("60 St Gerald Rd");
		o1.setShipment_city("Nottingham");
		o1.setShipment_postcode("NO73 8FH");
		o1 = oRepo.save(o1);
		
		//many to many relationship - Spice to Recipe
		s1.setOrders(new ArrayList<>());
		s1.getOrders().add(o1);
		s1 = sRepo.save(s1);
		
		//Payment instances
		Payment p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11;
		p1 = new Payment();
		p1.setCard_name("Bethany G Wilson");
		p1.setCard_number("3248921394180345");
		p1.setExpiry_date("08/23");
		p1.setSecurity_code("843");
		p1.setAmount(3.49);
		p1 = pRepo.save(p1);
		
		//one to one relationship - Payment to Orders
		p1.setOrders(o1);
		p1 = pRepo.save(p1);
		
		//Customer instances
		Customer c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11;
		c1 = new Customer();
		c1.setFirst_name("Bethany");
		c1.setLast_name("Wilson");
		c1.setPhone_number("07234091358");
		c1.setEmail("bethany.wilson@gmail.com");
		c1.setStreet_name("5 Heralds Rd");
		c1.setCity("Liverpool");
		c1.setPostcode("LI94 0DJ");
		c1 = cRepo.save(c1);
		
		//one to many relationship - Customer to Orders
		c1.setOrders(new ArrayList<>());
		c1.getOrders().add(o1);
		c1 = cRepo.save(c1);
		
		//many to one relationship - Orders to Customer
		o1.setCustomer(c1);
		o1 = oRepo.save(o1);
		
		
	}

}
