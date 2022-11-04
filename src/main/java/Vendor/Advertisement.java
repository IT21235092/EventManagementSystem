package Vendor;

public class Advertisement {

	private int adId;
	private int vendorId;
	private float price;
	private String desc;
	private String attach;
	
	//Constructor
	public Advertisement(int adId, int vendorId, float price, String desc, String attach) {
		super();
		this.adId = adId;
		this.vendorId = vendorId;
		this.price = price;
		this.desc = desc;
		this.attach = attach;
	}

	
	//Getters and Setters
	public int getAdId() {
		return adId;
	}

	public void setAdId(int adId) {
		this.adId = adId;
	}

	public int getVendorId() {
		return vendorId;
	}

	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}
	
	
}
