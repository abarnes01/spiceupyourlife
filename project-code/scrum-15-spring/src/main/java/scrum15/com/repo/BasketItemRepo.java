package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.BasketItem;

public interface BasketItemRepo extends CrudRepository<BasketItem, Integer>{

}