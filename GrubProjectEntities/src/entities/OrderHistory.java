package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER_HISTORY")
public class OrderHistory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@OneToOne
	@JoinColumn(name = "customer_email")
	private Customers customerEmail;

	public int getId() {
		return id;
	}

	public Customers getCustomerEmail() {
		return customerEmail;
	}

	public void setEmail(Customers customerEmail) {
		this.customerEmail = customerEmail;
	}

}
