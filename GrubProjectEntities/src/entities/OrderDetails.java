package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ORDER_DETAILS")
public class OrderDetails {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    int detail_id;
    //Composite Key: int dvd_id;
    
    @ManyToOne
    @JoinColumn(name="customer_order")
    private CustomerOrder customerOrder;
    int lineItem;
    int quantity;
    public int getDetail_id() {
        return detail_id;
    }
    public void setDetail_id(int detail_id) {
        this.detail_id = detail_id;
    }
    public CustomerOrder getCustomerOrder() {
        return customerOrder;
    }
    public void setCustomerOrder(CustomerOrder customerOrder) {
        this.customerOrder = customerOrder;
    }
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