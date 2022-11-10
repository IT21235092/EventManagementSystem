package com.feedback;

public class feedback {
	
	private int fid;
	private int cid;
	private String description;
	private int rating;
	
	public feedback(int fid, int cid,String description, int rating) {
		
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
	
	
	
	

}
