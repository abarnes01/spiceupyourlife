package scrum15.com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Recipe {
	private int id;
	private String name;
	private int servings;
	private String time;
	private String author;
	
	private Set<SpiceRecipe> spiceRecipes = new HashSet<SpiceRecipe>();
	
	public Recipe() {
	}
	
	
	public Recipe(String name, int servings, String time, String author) {
	super();
	this.name = name;
	this.servings = servings;
	this.time = time;
	this.author = author;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "recipe_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(columnDefinition = "INT NOT NULL")
	public int getServings() {
		return servings;
	}
	public void setServings(int servings) {
		this.servings = servings;
	}
	@Column(columnDefinition = "TIME NOT NULL")
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@OneToMany(mappedBy = "primaryKey.recipe", cascade = CascadeType.ALL)
	public Set<SpiceRecipe> getSpiceRecipes() {
		return spiceRecipes;
	}
	public void setSpiceRecipes(Set<SpiceRecipe> spiceRecipes) {
		this.spiceRecipes = spiceRecipes;
	}
	public void addSpiceRecipe(SpiceRecipe spiceRecipe) {
		this.spiceRecipes.add(spiceRecipe);
	}
}
