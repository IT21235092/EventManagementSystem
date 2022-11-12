package com.vendor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;

public class VendorDBUtil {
	
	
	public static ArrayList insertVendor(String org_name, String userName , String email, String phone, String pswd,String types, String  address) throws SQLException
	{
		
		boolean isSuccess = false;
		int vendorId = 0;
		ArrayList arr = new ArrayList<>();
		Connection con = ConnectDatabase.getConnection();
		
		Statement stmtCheck = con.createStatement();
		String sqlCheck = "select * from vendor where Username = '"+userName+"'";
		ResultSet rsCheck = stmtCheck.executeQuery(sqlCheck);
		
		if (rsCheck.next())
		{
			arr.add(vendorId);
			arr.add(userName);
			arr.add(isSuccess);
			
			return arr;
		}
		
			try
			{
		
				Statement stmt = con.createStatement();
				
				String sql = "insert into Vendor values(0,'"+org_name+"', '"+userName+"', '"+pswd+"','"+email+"', NULL,'"+phone+"', '"+types+"','"+address+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0)
				{
					sql = "select * from customer where Username = '"+userName+"'";
					ResultSet rs1 = stmt.executeQuery(sql);
					
					if( rs1.next())
					{
						vendorId = rs1.getInt(1);
						isSuccess = true;
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
			
		
		arr.add(vendorId);
		arr.add(userName);
		arr.add(isSuccess);
		
		
		return arr;
		
		
	}
	
	public static ArrayList validate(String email, String password) throws SQLException
	{
		
		String Username = "";
		int vendor_Id = 0;
		boolean isSuccess = false;
		ArrayList arr = new ArrayList();
		
		Connection con = ConnectDatabase.getConnection();
		
		try
		{
			
			Statement stmt = con.createStatement();
			String sql = "select * from vendor where Email ='"+email+"' and password = '" +password+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				Username = rs.getString(3);
				vendor_Id = rs.getInt(1);
				isSuccess = true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//validate
		arr.add(vendor_Id);
		arr.add(Username);
		arr.add(isSuccess);
		
		return arr;
	}
	
	public static List<Vendor> getVendorDetails(int id)
	{
		ArrayList<Vendor> ven = new ArrayList();
		
		try
		{
			Connection con = ConnectDatabase.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from vendor where Vendor_ID = '"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int ID = rs.getInt(1);
				System.out.println(ID);
				
				String Org_Name = rs.getString(2);
				System.out.println(Org_Name);
				String Username = rs.getString(3);
				String Password = rs.getString(4);
				String Email = rs.getString(5);
				String dp = rs.getString(6);
				String Contact_no = rs.getString(7);
				String Type = rs.getString(8);
				String Location = rs.getString(9);
			    
			    Vendor v = new Vendor(ID,Org_Name,Username,Password,Email,dp, Contact_no, Type, Location);
			    ven.add(v);
			       
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return ven;
	}
	
	
	public static boolean updateVendor(int id,String organization,String username,String password,String email,String contact,String types,String Location)
	{
		boolean isSuccess = false;
		
		try
		{
			Connection con = ConnectDatabase.getConnection();
			Statement stmt = con.createStatement();
			String sql = "update vendor SET Username = '"+username+"', Password = '"+password+"', Email = '"+email+"', Contact_no = '"+contact+"', Org_Name = '"+organization+"', Location = '"+Location+"', Type = '"+types+"' where Vendor_ID = '"+id+"'";
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
