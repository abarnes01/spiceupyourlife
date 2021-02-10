package scrum15.com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(columnDefinition = "DATE NOT NULL")
	private String order_date;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String shipment_name;
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	private String shipment_street_name;
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	private String shipment_city;
	@Column(columnDefinition = "VARCHAR(8) NOT NULL")
	private String shipment_postcode;
	@OneToOne(mappedBy = "orders")
	private Payment payment;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer customer;
	@ManyToMany(mappedBy = "orders")
	private List<Spice> spice;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getShipment_name() {
		return shipment_name;
	}
	public void setShipment_name(String shipment_name) {
		this.shipment_name = shipment_name;
	}
	public String getShipment_street_name() {
		return shipment_street_name;
	}
	public void setShipment_street_name(String shipment_street_name) {
		this.shipment_street_name = shipment_street_name;
	}
	public String getShipment_city() {
		return shipment_city;
	}
	public void setShipment_city(String shipment_city) {
		this.shipment_city = shipment_city;
	}
	public String getShipment_postcode() {
		return shipment_postcode;
	}
	public void setShipment_postcode(String shipment_postcode) {
		this.shipment_postcode = shipment_postcode;
	}
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<Spice> getSpice() {
		return spice;
	}
	public void setSpice(List<Spice> spice) {
		this.spice = spice;
	}
	
}

