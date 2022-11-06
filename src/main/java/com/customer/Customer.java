package com.customer;

public class Customer {
	
	private int id;
	private String firstName;
	private String lastName;
	private String Org_Name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private String profile_pic;
	private boolean Organization;
	private boolean Single_customer;
	


	
	public Customer(int id, String username, String password, String email, String dp, String contact, boolean org,
			String org_name, boolean single_cus, String first_Name,String Last_Name)
	{
		this.id = id;
		this.firstName = first_Name;
		this.lastName = Last_Name;
		this.Org_Name = org_name;
		this.email = email;
		this.phone = contact;
		this.username = username;
		this.password = password;
		this.profile_pic = dp;
		this.Organization = org;
		this.Single_customer = single_cus;
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


	public String getOrg_Name() {
		return Org_Name;
	}


	public void setOrg_Name(String org_Name) {
		Org_Name = org_Name;
	}


	public String getProfile_pic() {
		return profile_pic;
	}


	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}


	public boolean isOrganization() {
		return Organization;
	}


	public void setOrganization(boolean organization) {
		Organization = organization;
	}


	public boolean isSingle_customer() {
		return Single_customer;
	}


	public void setSingle_customer(boolean single_customer) {
		Single_customer = single_customer;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getid()
	{
		return id;
	}


	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}
	
	

}
