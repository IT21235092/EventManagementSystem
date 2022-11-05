package com.vendor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDatabase {
	
	
	public static Connection getConnection() throws SQLException 
	{
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/event_management_system?autoReconnect=true&useSSL=false";
			String name = "root";
			String password = "eventmanagement123";
			
			Connection con = DriverManager.getConnection(url, name, password);
			return con;
		} 
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		}
		

	  
	
		
	}
	

}
