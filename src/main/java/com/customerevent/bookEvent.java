package com.customerevent;

public class bookEvent {
	
	private int eid;
	private String type;
	private String name;
	private String date;
	private double price;
	private int num;
	private int cid;
	
	public bookEvent(int eid, String type, String name, String date, double price, int num, int cid) {
		this.eid = eid;
		this.type = type;
		this.name = name;
		this.date = date;
		this.price = price;
		this.num = num;
		this.cid = cid;
	}

	public int getEid() {
		return eid;
	}

	

	public String getType() {
		return type;
	}

	

	public String getName() {
		return name;
	}

	

	public String getDate() {
		return date;
	}

	

	public double getPrice() {
		return price;
	}

	

	public int getNum() {
		return num;
	}

	

	public int getCid() {
		return cid;
	}

	
	
	
	
	
	
	

}
