package Admin;

public class Event {
	
	private String Event_Date;
	private String name;
	private String status;
	private double totPrice;
	
	public Event(String event_Date, String name, String status, double totPrice) {
		super();
		Event_Date = event_Date;
		this.name = name;
		this.status = status;
		this.totPrice = totPrice;
	}

	public String getEvent_Date() {
		return Event_Date;
	}

	public void setEvent_Date(String event_Date) {
		Event_Date = event_Date;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String isStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getTotPrice() {
		return totPrice;
	}

	public void setTotPrice(double totPrice) {
		this.totPrice = totPrice;
	}
	
	
	
	
	

}
