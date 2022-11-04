package com.customerevent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class EventDBUtil {
	
	public static boolean insertEvent(String type, String name, int num, String date) {
		
		boolean isSuccess = false;
		
		//database connection
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into event values(0,'"+name+"','"+num+"', '"+type+"', '"+date+"',0,1)";
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
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

}
