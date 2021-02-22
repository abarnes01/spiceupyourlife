package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Orders;

public interface OrdersRepo extends CrudRepository<Orders, Integer>{

}