package scrum15.com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Spice {
	private int id;
	private String name;
	private String description;
	private double weight;
	private double unit_price;
	
	private Set<SpiceRecipe> spiceRecipes = new HashSet <SpiceRecipe>();
	
	private Set<SpiceOrders> spiceOrders = new HashSet <SpiceOrders>();
	
	public Spice() {
	}
	
	public Spice(String name, String description, double weight, double unit_price) {
		super();
		this.name = name;
		this.description = description;
		this.weight = weight;
		this.unit_price = unit_price;
	}
	
	public void addRecipe (SpiceRecipe recipe) {
		this.spiceRecipes.add(recipe);
	}
	
	public void addOrders (SpiceOrders orders) {
		this.spiceOrders.add(orders);
	}
	
//	@ManyToMany
//	@JoinTable(name = "spice_recipe",
//	   joinColumns = @JoinColumn(name = "spice_id"),
//	   inverseJoinColumns = @JoinColumn(name = "recipe_id"))
//	private List<Recipe> recipe;
//	@ManyToMany
//	@JoinTable(name = "orders_details",
//	   joinColumns = @JoinColumn(name = "spice_id"),
//	   inverseJoinColumns = @JoinColumn(name = "orders_id"))
//	private List<Orders> orders;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "spice_id")
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
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column(columnDefinition = "FLOAT NOT NULL")
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	@Column(columnDefinition = "FLOAT NOT NULL")
	public double getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(double unit_price) {
		this.unit_price = unit_price;
	}
	
	@OneToMany(mappedBy = "primaryKey.spice", cascade = CascadeType.ALL)
	public Set<SpiceRecipe> getSpiceRecipes() {
		return spiceRecipes;
	}

	public void setSpiceRecipes(Set<SpiceRecipe> spiceRecipes) {
		this.spiceRecipes = spiceRecipes;
	}
	
	public void addSpiceRecipes(SpiceRecipe spiceRecipe) {
		this.spiceRecipes.add(spiceRecipe);
	}
	@OneToMany(mappedBy = "primaryKey.spice", cascade = CascadeType.ALL)
	public Set<SpiceOrders> getSpiceOrders() {
		return spiceOrders;
	}
	public void setSpiceOrders(Set<SpiceOrders> spiceOrders) {
		this.spiceOrders = spiceOrders;
	}
	public void addSpiceOrders(SpiceOrders spiceOrders) {
		this.spiceOrders.add(spiceOrders);
	}
	
}