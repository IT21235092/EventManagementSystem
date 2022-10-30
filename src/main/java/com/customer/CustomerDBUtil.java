package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class CustomerDBUtil {
	
	
	public static boolean insertCustomer(String org_name,String firstName, String lastName, String userName, String email, String contact, String password)
	{
		
		boolean isSuccess = false;
		String dp = "";
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		if (firstName == null && lastName == null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
				
				String sql = "insert into customer values(0,'"+userName+"', '"+password+"', '"+email+"', NULL, '"+contact+"', true, '"+org_name+"', false , NULL, NULL)";
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
			
		}
		else
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				Statement stmt = con.createStatement();
				
				String sql = "insert into customer values(0,'"+userName+"', '"+password+"', '"+email+"', NULL, '"+contact+"', false, NULL, true , '"+firstName+"', '"+lastName+"')";
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
			
			
		}
		
		
		
		return isSuccess;
		
		
	}

}
