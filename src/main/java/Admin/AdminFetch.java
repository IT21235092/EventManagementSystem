package Admin;

public class AdminFetch {

	private String name;
	private String desc;
	private String[] typ;
	
	
	public AdminFetch(String name, String desc, String[] typ) {
		
		this.name = name;
		this.desc = desc;
		this.typ = typ;
		
	}


	public String getName() {
		return name;
	}




	public String getDesc() {
		return desc;
	}

	
	public String[] getTyp(){
		return typ;
	}
	
}
