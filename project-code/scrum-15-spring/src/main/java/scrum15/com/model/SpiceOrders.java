package scrum15.com.model;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "orders_details")
@AssociationOverrides({
	@AssociationOverride(name = "primaryKey.spice", 
			joinColumns = @JoinColumn(name = "spice_id")),
	@AssociationOverride(name = "primaryKey.orders",
			joinColumns = @JoinColumn(name = "orders_id")) })
public class SpiceOrders {
	private SpiceOrdersId primaryKey = new SpiceOrdersId();
	private int quantity;
	private String discount;
	
	@EmbeddedId
	public SpiceOrdersId getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(SpiceOrdersId primaryKey) {
		this.primaryKey = primaryKey;
	}
	@Transient
	public Spice getSpice() {
	return getPrimaryKey().getSpice();
	}
	
	public void setSpice(Spice spice) {
	getPrimaryKey().setSpice(spice);
	}
	 
	@Transient
	public Orders getOrders() {
	return getPrimaryKey().getOrders();
	}
	 
	public void setOrders(Orders orders) {
	getPrimaryKey().setOrders(orders);
	}
	@Column(columnDefinition = "INT NOT NULL")
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Column(columnDefinition = "DECIMAL(5,2), CHECK (discount<=100.00)")
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	
	

}
