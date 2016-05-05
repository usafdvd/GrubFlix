package entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "CUSTOMERS")
public class Customers {
	@Id
	private String email;
	String password;
	@Column(name = "access_level")
	int accessLevel;
	@Temporal(TemporalType.DATE)
	Date birthDate;
	String firstName;
	String lastName;
	@Enumerated(EnumType.STRING)
	Gender gender;
	int phone;
	@OneToMany(mappedBy="customer")
	List<Address> addresses;

	@OneToMany(mappedBy = "customer")
	private List<CustomerOrder> customerOrder;
	
	public Customers() {
		
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public int getAccessLevel() {
		return accessLevel;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public Gender getGender() {
		return gender;
	}

	public int getPhone() {
		return phone;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public List<CustomerOrder> getCustomerOrder() {
		return customerOrder;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setAccessLevel(int accessLevel) {
		this.accessLevel = accessLevel;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public void setAddresses(List<Address> addresses) {
	
		this.addresses = addresses;
	}
	
	public void addAddress(Address address) {
		if (addresses == null) {
			addresses = new ArrayList<Address>();
		}
		this.addresses.add(address);
	}

	public void setCustomerOrder(List<CustomerOrder> customerOrder) {
		this.customerOrder = customerOrder;
	}

	
	
}