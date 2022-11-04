package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil{
	
	public static boolean checkUserName(Connection con, String userName) throws SQLException
	{
		Statement stmt = con.createStatement();
		String sql = "select * from customer where Username = '"+userName+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if ( !rs.next() )
			return false;
		
		return true;
	}
	
	public static ArrayList insertCustomer(String org_name,String firstName, String lastName, String userName, String email, String contact, String password) throws SQLException
	{
		
		boolean isSuccess = false, validUserName = false;
		ArrayList arr = new ArrayList<>();
		Connection con = ConnectDatabase.getConnection();
		
		validUserName = checkUserName(con, userName);
		
		if (validUserName == false)
		{
			arr.add(userName);
			arr.add(isSuccess);
			
			return arr;
		}
		
		
		if (lastName.equals("") && firstName.equals(""))
		{
			try
			{
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
	
	
	public static String validate(String email, String password) throws SQLException
	{
		
		String Username = "";
		Connection con = ConnectDatabase.getConnection();
		
		try
		{
			
			Statement stmt = con.createStatement();
			String sql = "select * from customer where Email ='"+email+"' and password = '" +password+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				Username = rs.getString(2);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//validate
		
		
		return Username;
	}

}
