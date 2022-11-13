package Admin;

public class VendorApprove {
	
	private int VendorID;
	private int AddID;
	private String title;
	private double price;
	private String desc;
	private int status;
	
	public VendorApprove(int vendorID, int addID, String title, double price, String desc, int status) {
		
		VendorID = vendorID;
		AddID = addID;
		this.title = title;
		this.price = price;
		this.desc = desc;
		this.status = status;
	}

	
	public int getVendorID() {
		return VendorID;
	}


	public int getAddID() {
		return AddID;
	}



	public String getTitle() {
		return title;
	}


	public double getPrice() {
		return price;
	}


	public String getDesc() {
		return desc;
	}


	public int getStatus() {
		return status;
	}

	
	

}
