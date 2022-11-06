package com.vendor;

public class Vendor {
	
	private int Id;
	private String Org_Name;
	private String Username;
	private String Password;
	private String Email;
	private String dp;
	private String Contact_no;
	private String Type;
	private String Location;
	
	public Vendor(int id, String org_Name, String username, String password, String email, String dp, String contact_no, String type, String location) 
	{
		
		this.Id = id;
		this.Org_Name = org_Name;
		this.Username = username;
		this.Password = password;
		this.Email = email;
		this.dp = dp;
		this.Contact_no = contact_no;
		this.Type = type;
		this.Location = location;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getOrg_Name() {
		return Org_Name;
	}

	public void setOrg_Name(String org_Name) {
		Org_Name = org_Name;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getDp() {
		return dp;
	}

	public void setDp(String dp) {
		this.dp = dp;
	}

	public String getContact_no() {
		return Contact_no;
	}

	public void setContact_no(String contact_no) {
		Contact_no = contact_no;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}
	
	

}
