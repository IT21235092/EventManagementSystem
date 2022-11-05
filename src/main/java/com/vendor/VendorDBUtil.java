package com.vendor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class VendorDBUtil {
	
	
	public static ArrayList insertVendor(String org_name, String userName , String email, String phone, String pswd,String types, String  address) throws SQLException
	{
		
		boolean isSuccess = false;
		ArrayList arr = new ArrayList<>();
		Connection con = ConnectDatabase.getConnection();
		
		Statement stmtCheck = con.createStatement();
		String sqlCheck = "select * from vendor where Username = '"+userName+"'";
		ResultSet rsCheck = stmtCheck.executeQuery(sqlCheck);
		
		if (rsCheck.next())
		{
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
	
	public static ArrayList validate(String email, String password) throws SQLException
	{
		
		String Username = "";
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


}
