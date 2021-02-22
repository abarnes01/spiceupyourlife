package scrum15.com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Payment {
	private int id;
	private String card_name;
	private String card_number;
	private String expiry_date;
	private String security_code;
	private double amount;
	private Orders orders;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "payment_id")
	public int getId() {
		return id;
	}
	@Column(columnDefinition = "VARCHAR(50) NOT NULL")
	public void setId(int id) {
		this.id = id;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	@Column(columnDefinition = "VARCHAR(16) NOT NULL")
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	@Column(columnDefinition = "VARCHAR(5) NOT NULL")
	public String getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	@Column(columnDefinition = "VARCHAR(3) NOT NULL")
	public String getSecurity_code() {
		return security_code;
	}
	public void setSecurity_code(String security_code) {
		this.security_code = security_code;
	}
	@Column(columnDefinition = "FLOAT NOT NULL")
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	@OneToOne
	@JoinColumn(name = "orders_id")
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
}
