package com.btan.freeopenshopping.entities;

import org.hibernate.validator.constraints.*;

public class User {
	@NotEmpty
	private String firstName;
	@NotEmpty
	private String lastName;
	@NotEmpty
	private String email;
	@NotEmpty
	private String phone;
	private String fax;
	private String company;
	@NotEmpty
	private String address1;
	private String address2;
	@NotEmpty
	private String city;
	@NotEmpty
	private String postCode;
	@NotEmpty
	private String country;
	@NotEmpty
	private String region;
	@NotEmpty
	private String password;
	@NotEmpty
	private String confirmPassword;
	private int chkAgree = 1;
	private Role role;
	private UserStatus status;
	
	
	
	public User() {};
	
	public User(String email, String password) {
		this.email = email;
		this.password = password;
	};
	
	public User(String firstName, String lastName, String email, String phone,
			String fax, String company, String address1, String address2,
			String city, String postCode, String country, String region,
			String password, String confirmPassword, int chkAgree, Role role, UserStatus status) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.fax = fax;
		this.company = company;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.postCode = postCode;
		this.country = country;
		this.region = region;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.chkAgree = chkAgree;
		this.role = role;
		this.status = status;
	}


	public UserStatus getStatus() {
		return status;
	}
	public void setStatus(UserStatus status) {
		this.status = status;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}


	public String getConfirmPassword() {
		return confirmPassword;
	}


	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}


	public int getChkAgree() {
		return chkAgree;
	}


	public void setChkAgree(int chkAgree) {
		this.chkAgree = chkAgree;
	}
	
	
}
