package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Payment;

public interface PaymentRepo extends CrudRepository<Payment, Integer>{

}
