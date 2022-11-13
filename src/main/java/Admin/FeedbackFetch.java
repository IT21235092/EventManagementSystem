package Admin;

public class FeedbackFetch 
{
	private int FeedbackID;
	private String name;
	private String email;
	private String desc;
	private int rating;
	
	
	
	
	public FeedbackFetch(int feedbackID, String name,String email, String desc, int rating) {
		
		this.FeedbackID = feedbackID;
		this.name = name;
		this.email=email;
		this.desc = desc;
		this.rating = rating;
		
	}


	public int getFeedbackID() {
		return FeedbackID;
	}

	
	public String getEmail() {
		return email;
	}


	public String getName() {
		return name;
	}



	public String getDesc() {
		return desc;
	}



	public int getRating() {
		return rating;
	}





	
}
