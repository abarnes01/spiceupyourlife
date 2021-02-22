package scrum15.com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class SpiceRecipeId implements Serializable {
	private Spice spice;
	private Recipe recipe;
	
	@ManyToOne(cascade = CascadeType.ALL)
	public Spice getSpice() {
		return spice;
	}
	public void setSpice(Spice spice) {
		this.spice = spice;
	}
	
	@ManyToOne(cascade = CascadeType.ALL)
	public Recipe getRecipe() {
		return recipe;
	}
	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}
	
}
	