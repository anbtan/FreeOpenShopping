package com.btan.freeopenshopping.entities;

public class User {
	
	private String username;
	private String password;
	private String email;
	private Role role;
	private UserStatus status;
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public User() {};
	
	public User(String username, String password, String email, Role role,
			UserStatus status) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
