package scrum15.com.controller;

import org.springframework.validation.Validator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import scrum15.com.model.Customer;
import scrum15.com.repo.CustomerRepo;

public class CustomerValidator implements Validator {

	private CustomerRepo repo;

	public CustomerValidator(CustomerRepo repo) {
		this.repo = repo;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Customer.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		Customer c = (Customer) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "first_name", "", "Please enter first name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "last_name", "", "Please enter last name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "", "Please enter an email.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone_number", "", "Please enter a phone number.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "", "Please enter a country.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street_name", "", "Please enter a street name.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "postcode", "", "Please enter a post code.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "", "Please enter a city.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "", "Please enter a password.");
	}

}
