package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vendor.ConnectDatabase;

public class CustomerDBUtil{
	
	
	public static ArrayList insertCustomer(String org_name,String firstName, String lastName, String userName, String email, String contact, String password) throws SQLException
	{
		
		boolean isSuccess = false;
		ArrayList arr = new ArrayList<>();
		Connection con = ConnectDatabase.getConnection();
		
		Statement stmtCheck = con.createStatement();
		String sqlCheck = "select * from customer where Username = '"+userName+"'";
		ResultSet rsCheck = stmtCheck.executeQuery(sqlCheck);
		
		if (rsCheck.next())
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
	
	
	public static ArrayList validate(String email, String password) throws SQLException
	{
		
		String Username = "";
		boolean isSuccess = false;
		ArrayList arr = new ArrayList();
		
		Connection con = ConnectDatabase.getConnection();
		
		try
		{
			
			Statement stmt = con.createStatement();
			String sql = "select * from customer where Email ='"+email+"' and password = '" +password+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				Username = rs.getString(2);
				isSuccess = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//validate
		arr.add(Username);
		arr.add(isSuccess);
		
		return arr;
	}

	public static List<Customer> getCustomerDetails(int id)
	{
		ArrayList<Customer> cus = new ArrayList();
		
		
		try
		{
			Connection con = ConnectDatabase.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from customer where Cust_ID = '"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int ID = rs.getInt(1);
				String username = rs.getString(2);
				String password = rs.getString(3);
				String email = rs.getString(4);
				String dp = rs.getString(5);
				String Contact = rs.getString(6);
			    boolean org = rs.getBoolean(7);
			    String org_name = rs.getString(8);
			    boolean single_cus = rs.getBoolean(9);
			    String first_Name = rs.getString(10);
			    String last_Name = rs.getString(11);
			    
			    Customer c = new Customer(ID,username,password,email,dp, Contact, org, org_name, single_cus,first_Name,last_Name);
			    cus.add(c);
			       
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cus;
	}
}
