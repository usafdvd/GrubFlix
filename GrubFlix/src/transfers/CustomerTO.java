package transfers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

	public String getBirthDate() {

		DateFormat formatter1;
		if (birthDate != null) {
			formatter1 = new SimpleDateFormat("yyyy-MM-dd");
			return formatter1.format(birthDate);
		}
		return null;
	}

	public Date getBD() {
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

	public void setBirthDate(String birthDate) {
		System.out.println(birthDate);
		DateFormat formatter1;
		formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			this.birthDate = formatter1.parse(birthDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// this.birthDate = birthDate;
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
