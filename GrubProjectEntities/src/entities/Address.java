package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
//@Table(name = "ADDRESS")
@IdClass(Address_PK.class)
public class Address {
//ADDING COMMENT.
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	String name;
	String streetAddress;
	String city;
	String state;
	int zip;
	@Id
	@Column(name="customer_email")
	private String customerEmail;

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getName() {
		return name;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

}