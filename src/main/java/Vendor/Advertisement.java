package Vendor;

public class Advertisement {

	private int adId;
	private int Vendor_ID;
	private String title;
	private float price;
	private String desc;
	private String attach;
	private String sts;
	
	//Constructor
	public Advertisement(int adId, int Vendor_Id,String title, float price, String desc, String attach,String sts) {
		super();
		this.adId = adId;
		this.Vendor_ID = Vendor_ID;
		this.title = title ;
		this.price = price;
		this.desc = desc;
		this.attach = attach;
		this.sts = sts;
	}

	
	//Getters and Setters
	public int getAdId() {
		return adId;
	}
	
	public int getVendor_ID() {
		return Vendor_ID;
	}
	
	public float getPrice() {
		return price;
	}

	public String getDesc() {
		return desc;
	}

	public String getAttach() {
		return attach;
	}
	
	public String getSts() {
		return sts;
	}

	
}
