package entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CUSTOMER_ORDER")
public class CustomerOrder {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY) 
    int id;
    @ManyToOne
    @JoinColumn(name="customer")
    private Customers customer;
    @OneToMany(mappedBy="customerOrder")
     private List<OrderDetails> orderDetails;
    Date order;
    String status;
    
    public int getId() {
        return id;
    }

    public Customers getCustomer() {
        return customer;
    }
    public void setCustomer(Customers customer) {
        this.customer = customer;
    }
    public List<OrderDetails> getOrderDetails() {
        return orderDetails;
    }
    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }
    public Date getOrder() {
        return order;
    }
    public void setOrder(Date order) {
        this.order = order;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }        

}
