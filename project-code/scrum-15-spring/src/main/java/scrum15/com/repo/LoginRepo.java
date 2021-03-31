package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Login;

public interface LoginRepo extends CrudRepository<Login, Integer>{
}
