package scrum15.com.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Orders {
	private int id;
	private String order_date;
	private String shipment_name;
	private String shipment_street_name;
	private String shipment_city;
	private String shipment_postcode;
	private String shipment_country;
	private Payment payment;
	private Customer customer;
	
	private Set<SpiceOrders> spiceOrders = new HashSet<SpiceOrders>();
	
	public Orders() {
	}
	
	public Orders(String order_date, String shipment_name, String shipment_street_name, String shipment_city,
			String shipment_postcode, Payment payment, Customer customer) {
		super();
		this.order_date = order_date;
		this.shipment_name = shipment_name;
		this.shipment_street_name = shipment_street_name;
		this.shipment_city = shipment_city;
		this.shipment_postcode = shipment_postcode;
		this.payment = payment;
		this.customer = customer;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orders_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(columnDefinition = "DATE NOT NULL")
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getShipment_name() {
		return shipment_name;
	}
	public void setShipment_name(String shipment_name) {
		this.shipment_name = shipment_name;
	}
	@Column(columnDefinition = "VARCHAR(255) NOT NULL")
	public String getShipment_street_name() {
		return shipment_street_name;
	}
	public void setShipment_street_name(String shipment_street_name) {
		this.shipment_street_name = shipment_street_name;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getShipment_city() {
		return shipment_city;
	}
	public void setShipment_city(String shipment_city) {
		this.shipment_city = shipment_city;
	}
	@Column(columnDefinition = "VARCHAR(8) NOT NULL")
	public String getShipment_postcode() {
		return shipment_postcode;
	}
	public void setShipment_postcode(String shipment_postcode) {
		this.shipment_postcode = shipment_postcode;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public String getShipment_country() {
		return shipment_country;
	}

	public void setShipment_country(String shipment_country) {
		this.shipment_country = shipment_country;
	}

	@OneToOne(mappedBy = "orders")
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	@ManyToOne
	@JoinColumn(name = "customer_id")
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@OneToMany(mappedBy = "primaryKey.orders", cascade = CascadeType.ALL)
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
