package scrum15.com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity

public class Customer {
	private int id;
	private String first_name;
	private String last_name;
	private String password;
	private String phone_number;
	private String email;
	private String street_name;
	private String city;
	private String postcode;
	private String country;
	private List<Orders> orders;
	private boolean guest;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	@Column(columnDefinition = "VARCHAR(128)")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(columnDefinition = "VARCHAR(11) NOT NULL")
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	public String getStreet_name() {
		return street_name;
	}
	public void setStreet_name(String street_name) {
		this.street_name = street_name;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(columnDefinition = "VARCHAR(8) NOT NULL")
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@OneToMany(mappedBy = "customer")
	@ElementCollection(targetClass=Orders.class)
	public List<Orders> getOrders() {
		return orders;
	}
	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
	@Column(columnDefinition = "BOOLEAN NOT NULL")
	public boolean isGuest() {
		return guest;
	}
	public void setGuest(boolean guest) {
		this.guest = guest;
	}
	
}