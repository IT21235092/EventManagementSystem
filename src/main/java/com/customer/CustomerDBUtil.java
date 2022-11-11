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
	

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs1 = null;
	
	
	public static ArrayList<Object> insertCustomer(String org_name,String firstName, String lastName, String userName, String email, String contact, String password) throws SQLException
	{
		
		boolean isSuccess = false;
		int cust_Id = 0;
		String custType = "";
		ArrayList<Object> arr = new ArrayList<>();
		con = DBConnect.getConnection();
		
		Statement stmtCheck = con.createStatement();
		String sqlCheck = "select * from customer where Username = '"+userName+"'";
		String sqlCheck2 = "select * from customer where Email = '"+email+"'";
		ResultSet rsCheck = stmtCheck.executeQuery(sqlCheck);
		System.out.println("Hello");
		
		// Validating inserted details
		if (rsCheck.next())
		{
			arr.add(cust_Id);
			arr.add(userName);
			arr.add(isSuccess);
			arr.add(custType);
			return arr;
		}
		
		ResultSet rsCheck2 = stmtCheck.executeQuery(sqlCheck2);
		
		if(rsCheck2.next())
		{
			cust_Id = -1;
			arr.add(cust_Id);
			arr.add(email);
			arr.add(isSuccess);
			arr.add(custType);
			return arr;
		}
		
			
		if (lastName.equals("") && firstName.equals(""))
		{
			try
			{
				stmt = con.createStatement();
				
				String sql = "insert into customer values(0,'"+userName+"', '"+password+"', '"+email+"', NULL, '"+contact+"', true, '"+org_name+"', false , NULL, NULL)";
				int rs = stmt.executeUpdate(sql);
				custType = "Org";
				
				if(rs > 0)
				{
					isSuccess = true;
					sql = "select * from customer where Username = '"+userName+"'";
					rs1 = stmt.executeQuery(sql);
					
					if(rs1.next())
					{
						cust_Id = rs1.getInt(1);
					}
					
				
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
				stmt = con.createStatement();
				
				String sql = "insert into customer values(0,'"+userName+"', '"+password+"', '"+email+"', NULL, '"+contact+"', false, NULL, true , '"+firstName+"', '"+lastName+"')";
				int rs = stmt.executeUpdate(sql);
				custType = "Cus";
				
				if(rs > 0)
				{
					isSuccess = true;
					
					sql = "select * from customer where Username = '"+userName+"'";
					rs1 = stmt.executeQuery(sql);
					
					if(rs1.next())
					{
						cust_Id = rs1.getInt(1);
					}
					
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
		arr.add(cust_Id);
		arr.add(userName);
		arr.add(isSuccess);
		arr.add(custType);
		return arr;
		
		
	}
	
	
	public static ArrayList<Object> validate(String email, String password) throws SQLException
	{
		
		String Username = "";
		int custId = 0;
		String custType = "";
		boolean isSuccess = false, isOrg = false;
		ArrayList<Object> arr = new ArrayList<Object>();
		
		con = DBConnect.getConnection();
		
		try
		{
			
			stmt = con.createStatement();
			String sql = "select * from customer where Email ='"+email+"' and password = '" +password+ "'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				custId = rs.getInt(1);
				Username = rs.getString(2);
				isOrg = rs.getBoolean(7);
				isSuccess = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		arr.add(custId);
		arr.add(Username);
		arr.add(isSuccess);
		
		if ( isOrg == true)
			custType = "Org";
		else
			custType = "Cus";
		
		arr.add(custType);
		
		return arr;
	}

	public static List<Customer> getCustomerDetails(int id)
	{
		ArrayList<Customer> cus = new ArrayList();
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where Cust_ID = '"+id+"'";
		    rs = stmt.executeQuery(sql);
			
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
	
	
	public static boolean updateCustomer(int id, String Org_Name, String first_name,String  last_name, String username, String email, String contact, String password)
	{
		boolean isSuccess = false;
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "";
			
			if (Org_Name == null)
				sql = "update customer SET Username = '"+username+"', Password = '"+password+"', Email = '"+email+"', Contact_no = '"+contact+"', First_Name = '"+first_name+"', Last_name = '"+last_name+"' where Cust_ID = '"+id+"'";
			else
				sql = "update customer SET Username = '"+username+"', Password = '"+password+"', Email = '"+email+"', Contact_no = '"+contact+"', Org_Name = '"+Org_Name+"' where Cust_ID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs  > 0)
			{
				isSuccess = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
}
