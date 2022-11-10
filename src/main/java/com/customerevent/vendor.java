package com.customerevent;

public class vendor {
	
	
	private int vid;
	private String name;
	private String desc;
	private double price;
	private String loc;
	
	
	public vendor(String name, String desc, double price, String loc) {
		
		this.name = name;
		this.desc = desc;
		this.price = price;
		this.loc = loc;
	}
	
	public int getVid() {
		return vid;
	}


	public String getName() {
		return name;
	}


	

	public String getDesc() {
		return desc;
	}


	
	public double getPrice() {
		return price;
	}




	public String getPic() {
		return loc;
	}


	
	
	
	
	
	

}
