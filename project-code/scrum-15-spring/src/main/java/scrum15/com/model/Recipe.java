package scrum15.com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Recipe {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String name;
	@Column(columnDefinition = "INT NOT NULL")
	private int servings;
	@Column(columnDefinition = "TIME NOT NULL")
	private String time;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String author;
	@ManyToMany(mappedBy = "recipe")
	private List<Spice> spice;
	
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
	public int getServings() {
		return servings;
	}
	public void setServings(int servings) {
		this.servings = servings;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public List<Spice> getSpice() {
		return spice;
	}
	public void setSpice(List<Spice> spice) {
		this.spice = spice;
	}
}