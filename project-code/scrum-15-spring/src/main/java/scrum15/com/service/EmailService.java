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
	
	public void sendEmail(String email) {
		//send email
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(email);
		mail.setFrom("spiceupyourlife35@gmail.com");
		mail.setSubject("Confirmation of your redeemed mini starter kit!");
		mail.setText("Information of mini stater kit should got here");
		
		javaMailSender.send(mail);
	}
}
