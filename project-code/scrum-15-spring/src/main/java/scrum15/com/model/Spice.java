package scrum15.com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.JoinColumn;

@Entity
public class Spice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String name;
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	private String description;
	@Column(columnDefinition = "FLOAT NOT NULL")
	private double weight;
	@Column(columnDefinition = "FLOAT NOT NULL")
	private double unit_price;
	@ManyToMany
	@JoinTable(name = "spice_recipe",
	   joinColumns = @JoinColumn(name = "spice_id"),
	   inverseJoinColumns = @JoinColumn(name = "recipe_id"))
	private List<Recipe> recipe;
	@ManyToMany
	@JoinTable(name = "orders_details",
	   joinColumns = @JoinColumn(name = "spice_id"),
	   inverseJoinColumns = @JoinColumn(name = "orders_id"))
	private List<Orders> orders;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(double unit_price) {
		this.unit_price = unit_price;
	}
	public List<Recipe> getRecipe() {
		return recipe;
	}
	public void setRecipe(List<Recipe> recipe) {
		this.recipe = recipe;
	}
	public List<Orders> getOrders() {
		return orders;
	}
	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
}