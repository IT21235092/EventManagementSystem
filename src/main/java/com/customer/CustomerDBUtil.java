package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CustomerDBUtil {
	
	
	public static ArrayList insertCustomer(String org_name,String firstName, String lastName, String userName, String email, String contact, String password)
	{
		
		boolean isSuccess = false;
		ArrayList arr = new ArrayList<>();
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";

		
		if (lastName.equals("") && firstName.equals(""))
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
		
		arr.add(userName);
		arr.add(isSuccess);
		
		return arr;
		
		
	}

}
