package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Orders;

public interface OrdersRepository extends CrudRepository<Orders, Integer>{

}
