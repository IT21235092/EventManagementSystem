package com.customer;

public class Customer {
	
	private String org_Name;
	private String username;
	private String email;
	private String contact;
	private String password;
	
	// Constructor
	public Customer(String org_Name, String username, String email, String contact, String password) {
		this.org_Name = org_Name;
		this.username = username;
		this.email = email;
		this.contact = contact;
		this.password = password;
	}
	
	//Getters and Setters
	public String getOrg_Name() {
		return org_Name;
	}
	public void setOrg_Name(String org_Name) {
		this.org_Name = org_Name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
