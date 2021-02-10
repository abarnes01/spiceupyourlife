package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer>{

}
