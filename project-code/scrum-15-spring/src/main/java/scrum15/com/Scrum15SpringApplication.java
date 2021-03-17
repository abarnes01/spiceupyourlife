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
import scrum15.com.model.SpiceOrders;
import scrum15.com.model.SpiceRecipe;
import scrum15.com.repo.CustomerRepo;
import scrum15.com.repo.OrdersRepo;
import scrum15.com.repo.PaymentRepo;
import scrum15.com.repo.RecipeRepo;
import scrum15.com.repo.SpiceOrdersRepo;
import scrum15.com.repo.SpiceRecipeRepo;
import scrum15.com.repo.SpiceRepo;




@SpringBootApplication
public class Scrum15SpringApplication implements ApplicationRunner{
	
	@Autowired
	private CustomerRepo cRepo;
	
	@Autowired 
	private OrdersRepo oRepo;
	
	@Autowired
	private PaymentRepo pRepo;
	
	@Autowired
	private RecipeRepo rRepo;
	
	@Autowired
	private SpiceRepo sRepo;
	
	@Autowired 
	private SpiceRecipeRepo srRepo;
	
	@Autowired 
	private SpiceOrdersRepo soRepo;

	public static void main(String[] args) {
		SpringApplication.run(Scrum15SpringApplication.class, args);
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		//Recipe instances
		Recipe r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11;
		r1 = new Recipe();
		r1.setName("Chilli con carne");
		r1.setServings(4);
		r1.setTime("00:30:00");
		r1.setAuthor("Sunil Vijayakar");
		r1 = rRepo.save(r1);
		
		r2 = new Recipe();
		r2.setName("Mackerel recheado");
		r2.setServings(2);
		r2.setTime("00:30:00");
		r2.setAuthor("Rick Stein");
		r2 = rRepo.save(r2);
		
		//Spice instances
		Spice s1, s2, s3, s4, s5, s7, s8, s9, s10, s11;
		s1 = new Spice();
		s1.setName("Chilli Powder");
		s1.setDescription("Dried, pulverized fruit of one or more varieties of chilli pepper, sometimes with the addition of other spices");
		s1.setWeight(44);
		s1.setUnit_price(0.85);
		s1 = sRepo.save(s1);
		
		s2 = new Spice();
		s2.setName("Cayenne Pepper");
		s2.setDescription("Red coloured moderately hot chilli pepper");
		s2.setWeight(42);
		s2.setUnit_price(1.00);
		s2 = sRepo.save(s2);
		
		//many to many relationship - Spice to Recipe
		SpiceRecipe sr1, sr2;
		sr1 = new SpiceRecipe();
		sr1.setSpice(s1);
		sr1.setRecipe(r1);
		sr1.setMeasurement("1 tsb");
		sr1 = srRepo.save(sr1);
		
		sr2 = new SpiceRecipe();
		sr2.setSpice(s2);
		sr2.setRecipe(r2);
		sr2.setMeasurement("pinch");
		sr2 = srRepo.save(sr2);
	
		
		//Orders instances
		Orders o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11;
		o1 = new Orders();
		o1.setOrder_date("2021-02-10");
		o1.setShipment_name("SHIP-001");
		o1.setShipment_street_name("60 St Gerald Rd");
		o1.setShipment_city("Nottingham");
		o1.setShipment_postcode("NO73 8FH");
		o1.setShipment_country("England");
		o1 = oRepo.save(o1);
		
		o2 = new Orders();
		o2.setOrder_date("2021-02-21");
		o2.setShipment_name("SHIP-002");
		o2.setShipment_street_name("23 Rock Steet");
		o2.setShipment_city("Leicester");
		o2.setShipment_postcode("LE2 4AD");
		o2.setShipment_country("England");
		o2 = oRepo.save(o2);
		
		//many to many relationship - Spice to Orders
		SpiceOrders so1, so2;
		so1 = new SpiceOrders();
		so1.setSpice(s1);
		so1.setOrders(o1);
		so1.setQuantity(4);
		so1.setDiscount("50.50");
		
		so2 = new SpiceOrders();
		so2.setSpice(s2);
		so2.setOrders(o1);
		so2.setQuantity(2);
		so2.setDiscount("0");
		
		//Payment instances
		Payment p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11;
		p1 = new Payment();
		p1.setCard_name("Bethany G Wilson");
		p1.setCard_number("3248921394180345");
		p1.setExpiry_date("08/23");
		p1.setSecurity_code("843");
		p1.setAmount(3.49);
		p1 = pRepo.save(p1);
		
		p2 = new Payment();
		p2.setCard_name("Jamie H Thomas");
		p2.setCard_number("4892748392937482");
		p2.setExpiry_date("05/24");
		p2.setSecurity_code("791");
		p2.setAmount(8.00);
		p2 = pRepo.save(p2);
		
		//one to one relationship - Payment to Orders
		p1.setOrders(o1);
		p1 = pRepo.save(p1);
		
		p2.setOrders(o2);
		p2 = pRepo.save(p2);
		
		//Customer instances
		Customer c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11;
		c1 = new Customer();
		c1.setFirst_name("Bethany");
		c1.setLast_name("Wilson");
		c1.setPassword("Group15");
		c1.setPhone_number("07234091358");
		c1.setEmail("bethany.wilson@gmail.com");
		c1.setStreet_name("5 Heralds Rd");
		c1.setCity("Liverpool");
		c1.setPostcode("LI94 0DJ");
		c1.setCountry("England");
		c1.setGuest(false);
		c1.setPremium(false);
		c1.setCard_name(null);
		c1.setCard_number(null);
		c1.setExpiry_date(null);
		c1.setSecurity_code(null);
		c1 = cRepo.save(c1);
		
		c2 = new Customer();
		c2.setFirst_name("Jamie");
		c2.setLast_name("Thomas");
		c2.setPhone_number("07603947283");
		c2.setEmail("jamie.thomas@yahoo.co.uk");
		c2.setStreet_name("23 Rock Steet");
		c2.setCity("Leicester");
		c2.setPostcode("LE2 4AD");
		c2.setCountry("England");
		c2.setGuest(true);
		c2.setPremium(false);
		c2.setCard_name("Jamie M Thomas");
		c2.setCard_number("7387298374922932");
		c2.setExpiry_date("11/25");
		c2.setSecurity_code("094");
		c2 = cRepo.save(c2);
		
		c3 = new Customer();
		c3.setFirst_name("Harvey");
		c3.setLast_name("Morrison");
		c3.setPassword("Secure");
		c3.setPhone_number("07294820193");
		c3.setEmail("harvey.morrison@outlook.co.uk");
		c3.setStreet_name("5 Speed St");
		c3.setCity("Newcastle");
		c3.setPostcode("NE95 4RD");
		c3.setCountry("England");
		c3.setGuest(false);
		c3.setPremium(true);
		c3.setCard_name("Harvey J Morrison");
		c3.setCard_number("8930248910329232");
		c3.setExpiry_date("10/22");
		c3.setSecurity_code("390");
		c3 = cRepo.save(c3);
		
		//one to many relationship - Customer to Orders
		c1.setOrders(new ArrayList<>());
		c1.getOrders().add(o1);
		c1 = cRepo.save(c1);
		
		c2.setOrders(new ArrayList<>());
		c2.getOrders().add(o2);
		c2 = cRepo.save(c2);
				
		//many to one relationship - Orders to Customer
		o1.setCustomer(c1);
		o1 = oRepo.save(o1);
		
		o2.setCustomer(c2);
		o2 = oRepo.save(o2);
		
		so1 = soRepo.save(so1);
		so2 = soRepo.save(so2);
	}

}
