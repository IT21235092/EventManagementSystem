package com.feedback;

public class feedback {
	
	private int fid;
	private int cid;
	private String description;
	private int rating;
	private String event;
	private String date;
	
	public feedback(int fid, int cid,String description, int rating, String event, String date) {
		
		this.date = date;
		this.event = event;
		this.fid = fid;
		this.cid = cid;
		this.description = description;
		this.rating = rating;
	}

	public String getDescription() {
		return description;
	}

	public int getRating() {
		return rating;
	}

	public int getCid() {
		return cid;
	}

	public int getFid() {
		return fid;
	}

	public String getEvent() {
		return event;
	}

	public String getDate() {
		return date;
	}
	
	
	
	
	
	

}
