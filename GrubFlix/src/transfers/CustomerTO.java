package transfers;

import java.util.Date;

import entities.Gender;

public class CustomerTO {
	private String email;
	private String password;
	private int accessLevel;
	private Date birthDate;
	private String firstName;
	private String lastName;
	private Gender gender;
	private int phone;
	private String name;
	private String streetAddress;
	private String city;
	private String state;
	private int zip;
	
	public CustomerTO() {
		
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
	public String getName() {
		return name;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public int getZip() {
		return zip;
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
	public void setName(String name) {
		this.name = name;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	
	
	
}
