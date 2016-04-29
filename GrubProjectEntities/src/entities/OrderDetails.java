package entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER_DETAILS")
@IdClass(OrderDetails_PK.class)
public class OrderDetails {
	@Id
	@ManyToOne
	@JoinColumn
	@Id
	@ManyToOne // Or is this one to one?????
	@JoinColumn(name = "dvdid")
	private DVDs dvds;
	int lineItem;
	int quantity;

	public int getLineItem() {
		return lineItem;
	}

	public void setLineItem(int lineItem) {
		this.lineItem = lineItem;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}