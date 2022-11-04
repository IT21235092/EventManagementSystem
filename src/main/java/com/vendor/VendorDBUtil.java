package com.vendor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;

public class VendorDBUtil {
	
	
	public static ArrayList insertVendor(String org_name, String userName , String email, String phone, String pswd,String types, String  address)
	{
		
		boolean isSuccess = false;
		ArrayList arr = new ArrayList<>();
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";

		
	
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
				
				String sql = "insert into Vendor values(0,'"+org_name+"', '"+userName+"', '"+pswd+"','"+email+"', NULL,'"+phone+"', '"+types+"','"+address+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0)
				{
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		
		
		arr.add(userName);
		arr.add(isSuccess);
		
		return arr;
		
		
	}

}
