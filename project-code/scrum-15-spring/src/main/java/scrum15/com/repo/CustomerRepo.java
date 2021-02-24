package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Customer;

public interface CustomerRepo extends CrudRepository<Customer, Integer>{
	public Customer findByEmail(String email);
	public Customer findByPassword(String password);
}
