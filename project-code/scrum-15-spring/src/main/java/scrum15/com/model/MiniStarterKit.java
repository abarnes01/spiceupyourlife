package scrum15.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class MiniStarterKit {
	private int id;
	private String spice;
	private String email;
	private String street_name;
	private String city;
	private String postcode;
	private String country;
	private Customer customer;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "miniStarterKit_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(columnDefinition = "VARCHAR(50)")
	public String getSpice() {
		return spice;
	}
	public void setSpice(String spice) {
		this.spice = spice;
	}
	@Column(columnDefinition = "VARCHAR(50)")
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
	@Column(columnDefinition = "VARCHAR(10) NOT NULL")
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
	@OneToOne(mappedBy="miniStarterKit")
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
