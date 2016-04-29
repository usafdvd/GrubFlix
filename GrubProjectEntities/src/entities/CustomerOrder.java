package entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER_ORDER")
public class CustomerOrder {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY) 
    int id;
    @ManyToOne
    @JoinColumn(name="customer_email")
    private Customers customer;

    Date dateOrder;
    String status;
    
    
	@ManyToMany(mappedBy="customerDVDOrders")          
	private List<DVDs> DVDs;
	@ManyToMany(mappedBy="customerFoodOrders")
	private List<Food> food;
	
	
	
    public int getId() {
        return id;
    }


	public Customers getCustomer() {
		return customer;
	}


	public Date getDateOrder() {
		return dateOrder;
	}


	public String getStatus() {
		return status;
	}


	public List<DVDs> getDVDs() {
		return DVDs;
	}


	public void setCustomer(Customers customer) {
		this.customer = customer;
	}


	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public void setDVDs(List<DVDs> dVDs) {
		DVDs = dVDs;
	}


	public List<Food> getFood() {
		return food;
	}


	public void setFood(List<Food> food) {
		this.food = food;
	}

	
	

}
