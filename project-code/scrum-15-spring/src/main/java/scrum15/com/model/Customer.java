package scrum15.com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String first_name;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String last_name;
	@Column(columnDefinition = "VARCHAR(11) NOT NULL")
	private String phone_number;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String email;
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	private String street_name;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String city;
	@Column(columnDefinition = "VARCHAR(8) NOT NULL")
	private String postcode;
	@OneToMany(mappedBy = "customer")
	private List<Orders> orders;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStreet_name() {
		return street_name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setStreet_name(String street_name) {
		this.street_name = street_name;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public List<Orders> getOrders() {
		return orders;
	}
	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
	
}
