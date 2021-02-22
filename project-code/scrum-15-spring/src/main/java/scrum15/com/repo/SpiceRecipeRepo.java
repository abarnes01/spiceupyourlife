package scrum15.com.repo;

import org.springframework.data.repository.CrudRepository;

import scrum15.com.model.SpiceRecipe;
import scrum15.com.model.SpiceRecipeId;

public interface SpiceRecipeRepo extends CrudRepository<SpiceRecipe, SpiceRecipeId>{

}
