package scrum15.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

	private JavaMailSender javaMailSender;
	
	@Autowired
	public EmailService(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
	
	public void sendEmail(String email, String spice, String streetname, String city, String postcode, String country) {
		//send email
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(email);
		mail.setFrom("spiceupyourlife35@gmail.com");
		mail.setSubject("Confirmation of your redeemed mini starter kit!");
		mail.setText("You chose 10g of: " + spice + ", alongside 10g of chilli.\n\nYou confirmed that your delivery address was:\nStreet Name: " + 
		streetname + "\nCity: " + city + "\nPostcode: " + postcode + "\nCountry: " + country + "\n\nI hope you enjoy your complementary mini starter kit on us :)");
		
		javaMailSender.send(mail);
	}
}
