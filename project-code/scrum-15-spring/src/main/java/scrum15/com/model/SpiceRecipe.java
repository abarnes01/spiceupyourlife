package scrum15.com.model;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Transient;

@Entity
@AssociationOverrides({
	@AssociationOverride(name = "primaryKey.spice", 
			joinColumns = @JoinColumn(name = "spice_id")),
	@AssociationOverride(name = "primaryKey.recipe",
			joinColumns = @JoinColumn(name = "recipe_id")) })
public class SpiceRecipe {
	private SpiceRecipeId primaryKey = new SpiceRecipeId();
	private String measurement;
	
	@EmbeddedId
	public SpiceRecipeId getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(SpiceRecipeId primaryKey) {
		this.primaryKey = primaryKey;
	}
	@Transient
	public Spice getSpice() {
	return getPrimaryKey().getSpice();
	}
	public void setSpice(Spice spice) {
	getPrimaryKey().setSpice(spice);
	} 
	@Transient
	public Recipe getRecipe() {
	return getPrimaryKey().getRecipe();
	} 
	public void setRecipe(Recipe recipe) {
	getPrimaryKey().setRecipe(recipe);
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getMeasurement() {
		return measurement;
	}
	public void setMeasurement(String measurement) {
		this.measurement = measurement;
	}
	
}
