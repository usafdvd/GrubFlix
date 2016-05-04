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
		System.out.println("set eamil");
		this.email = email;
	}

	public void setPassword(String password) {
		System.out.println("in password");
		this.password = password;
	}

	public void setAccessLevel(int accessLevel) {
		System.out.println("in accesslevel");
		this.accessLevel = accessLevel;
	}

	public void setBirthDate(String birthDate) {
		System.out.println("in birthdate");
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
		System.out.println("in firstname");
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		System.out.println("in lastname");
		this.lastName = lastName;
	}

	public void setGender(Gender gender) {
		System.out.println("in gender");
		this.gender = gender;
	}

	public void setPhone(int phone) {
		System.out.println("in phone");
		this.phone = phone;
	}

	public void setName(String name) {
		System.out.println("in name");
		this.name = name;
	}

	public void setStreetAddress(String streetAddress) {
		System.out.println("in street address");
		this.streetAddress = streetAddress;
	}

	public void setCity(String city) {
		System.out.println("in city");
		this.city = city;
	}

	public void setState(String state) {
		System.out.println("in state");
		this.state = state;
	}

	public void setZip(int zip) {
		System.out.println("in zip");
		this.zip = zip;
	}

}
