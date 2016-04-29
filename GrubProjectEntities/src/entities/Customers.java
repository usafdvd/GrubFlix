package entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMERS")
public class Customers {
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	String email;
	String password;
	@Column(name = "access_level")
	int accessLevel;
	Date birthDate;
	String firstName;
	String lastName;
	String gender;
	int phone;
	List<Address> addresses;

	@OneToMany(mappedBy = "customer")
	private List<CustomerOrder> customerOrder;
	@OneToOne(mappedBy = "customerEmail")
	private OrderHistory orderHistory;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAccessLevel() {
		return accessLevel;
	}

	public void setAccessLevel(int accessLevel) {
		this.accessLevel = accessLevel;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastname(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public List<CustomerOrder> getCustomerOrder() {
		return customerOrder;
	}

	public void setCustomerOrder(List<CustomerOrder> customerOrder) {
		this.customerOrder = customerOrder;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public OrderHistory getOrderHistory() {
		return orderHistory;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public void setOrderHistory(OrderHistory orderHistory) {
		this.orderHistory = orderHistory;
	}

}