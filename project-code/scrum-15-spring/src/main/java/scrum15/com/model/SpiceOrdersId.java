package scrum15.com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class SpiceOrdersId implements Serializable {
	private Spice spice;
	private Orders orders;
	
	@ManyToOne(cascade = CascadeType.ALL)
	public Spice getSpice() {
		return spice;
	}
	public void setSpice(Spice spice) {
		this.spice = spice;
	}
	
	@ManyToOne(cascade = CascadeType.ALL)
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
}
