package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.SpiceOrders;
import scrum15.com.model.SpiceOrdersId;

public interface SpiceOrdersRepo extends CrudRepository<SpiceOrders, SpiceOrdersId>{

}
