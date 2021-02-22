package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.Recipe;

public interface RecipeRepo extends CrudRepository<Recipe, Integer>{

}
