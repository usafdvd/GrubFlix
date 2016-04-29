package entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "FOOD")
public class Food {
@Id
@Column(name="food_id")
int foodId;
String type;   // COULD BE ENUM ???

@ManyToMany
@JoinTable(name="FOOD_ORDERS",
		joinColumns=@JoinColumn(name="FOODID"),
		inverseJoinColumns=@JoinColumn(name="ORDERID"))
private List<CustomerOrder> customerFoodOrders;

public int getFoodId() {
	return foodId;
}

public String getType() {
	return type;
}

public List<CustomerOrder> getCustomerFoodOrders() {
	return customerFoodOrders;
}

public void setType(String type) {
	this.type = type;
}

public void setCustomerFoodOrders(List<CustomerOrder> customerFoodOrders) {
	this.customerFoodOrders = customerFoodOrders;
}





}
