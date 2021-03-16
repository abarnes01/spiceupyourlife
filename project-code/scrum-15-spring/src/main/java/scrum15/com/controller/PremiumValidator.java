package scrum15.com.controller;

import org.springframework.validation.Validator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;

public class PremiumValidator implements Validator {

	private CustomerRepo repo;

	public PremiumValidator(CustomerRepo repo) {
		this.repo = repo;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Customer.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		Customer c = (Customer) target;

		if (repo.existsCustomerByEmail(c.getEmail())) {
			errors.rejectValue("email", "", "Email is already in use");
		}
		
		if (c.getFirst_name().length() > 50) {
			errors.rejectValue("first_name", "", "First name cannot be longer than 50 characters");
		}
		
		if (c.getLast_name().length() > 50) {
			errors.rejectValue("last_name", "", "Last name cannot be longer than 50 characters");
		}
		
		if (c.getPassword().length() > 128) {
			errors.rejectValue("password", "", "Password cannot be longer than 128 characters");
		}
		
		if (c.getPhone_number().length() != 11) {
			errors.rejectValue("phone_number", "", "Phone number must be 11 digits long");
		}
		
		if (c.getEmail().length() > 50) {
			errors.rejectValue("email", "", "Email cannot be longer than 50 characters");
		}
		
		if (c.getStreet_name().length() > 255) {
			errors.rejectValue("street_name", "", "Street name cannot be longer than 255 characters");
		}
		
		if (c.getCity().length() > 50) {
			errors.rejectValue("city", "", "City cannot be longer than 50 characters");
		}
		
		if (c.getPostcode().length() > 10) {
			errors.rejectValue("postcode", "", "Postcode cannot be longer than 10 characters");
		}
		
		if (c.getCountry().length() > 50) {
			errors.rejectValue("country", "", "Country cannot be longer than 50 characters");
		}
		
		if (c.getCard_name().length() > 50 ) {
			errors.rejectValue("card_name", "", "Card name cannot be longer than 50 characters");
		}
		
		if (c.getCard_number().length() != 16) {
			errors.rejectValue("card_number", "", "Card number must be 16 digits long");
		}
		
		if (c.getExpiry_date().length() != 5) {
			errors.rejectValue("expiry_date", "", "Expiry date must be 5 characters long");
		}
		
		if (c.getSecurity_code().length() != 3) {
			errors.rejectValue("security_code", "", "Security code must be 3 digits long");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "first_name", "", "Please enter first name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "last_name", "", "Please enter last name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "", "Please enter an email.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "", "Please enter a country.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street_name", "", "Please enter a street name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "postcode", "", "Please enter a post code.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "", "Please enter a city.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "", "Please enter a password.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "card_name", "", "Please enter your card name.");
	}

}
