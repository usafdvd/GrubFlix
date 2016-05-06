package entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
// @Table(name = "ADDRESS")
@IdClass(Address_PK.class)
public class Address implements Serializable {
	// ADDING COMMENT.
	@Id
	String name;
	String streetAddress;
	String city;
	String state;
	int zip;
	@Id
	@ManyToOne
	@JoinColumn(name = "customer_email")
	private Customers customer;

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

	public Customers getCustomer() {
		return customer;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCustomer(Customers customer) {
		this.customer = customer;
	}

}