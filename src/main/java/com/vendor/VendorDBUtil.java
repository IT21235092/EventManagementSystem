package com.vendor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;
import com.customer.DBConnect;

import Admin.Event;

public class VendorDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs1 = null;
	
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
				
				String sql = "insert into Vendor values(0,'"+org_name+"', '"+userName+"', '"+pswd+"','"+email+"', NULL,'"+phone+"', '"+types+"','"+address+"', 0)";
				int rs = stmt.executeUpdate(sql);
				System.out.println(rs);
				
				if(rs > 0)
				{
					isSuccess = true;
					sql = "select * from vendor where Username = '"+userName+"'";
					ResultSet rs1 = stmt.executeQuery(sql);
					
					if( rs1.next())
					{
						vendorId = rs1.getInt(1);
						
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
	
	
	public static boolean deleteVendor(int id)
	{
		boolean isSuccess = true;
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from vendor where Vendor_ID = '"+id+"'";
		    int rs = stmt.executeUpdate(sql);
		    
		    if ( rs > 0)
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

	public static List<Object> CountData(int id)
	{
		ArrayList<Object> data = new ArrayList<Object>();
		boolean isSuccess = false;
		
		try
		{
			Connection con = ConnectDatabase.getConnection();
			Statement stmt = con.createStatement();
			
			String sql1 = "select count(e.Cust_ID)"
					+ " from advertisement a,customer c,event e,event_add ed,vendor v"
					+ " where a.Ad_ID=ed.Ad_ID and e.Event_ID=ed.Event_ID and v.Vendor_ID=a.Vendor_ID and c.Cust_ID = e.Cust_ID and v.Vendor_ID = '"+id+"'"
					+ " group by v.Vendor_ID";
			String sql2 = "select count(ad.Ad_ID)"
					+ "from event e, event_add ed, advertisement ad\r\n"
					+ "where e.Event_ID = ed.Event_ID and ed.Ad_ID = ad.Ad_ID and e.status = 0 and ad.Vendor_ID = '"+id+"'";
			String sql3 = "select count(ad.Ad_ID)"
					+ "from event e, event_add ed, advertisement ad\r\n"
					+ "where e.Event_ID = ed.Event_ID and ed.Ad_ID = ad.Ad_ID and e.status = 1 and ad.Vendor_ID = '"+id+"'";
			String sql4 = "select Total_Profit from vendor where Vendor_ID = '"+id+"'";
			
			try {
				
				ResultSet rs3 = stmt.executeQuery(sql1);
				
				while(rs3.next())
				{
					int cusCount =  rs3.getInt(1);
					data.add(cusCount);		
				}
				
				ResultSet rs4 = stmt.executeQuery(sql2);
				
				while(rs4.next())
				{
					int eventCount1 = rs4.getInt(1);
					data.add(eventCount1);
				}
				
				ResultSet rs5 = stmt.executeQuery(sql3);
				
				while(rs5.next())
				{
					int eventCount2 = rs5.getInt(1);
					data.add(eventCount2);
				}
				
				ResultSet rs6 = stmt.executeQuery(sql4);
				
				while(rs6.next())
				{
					isSuccess = true;
					double profit = rs6.getDouble(1);
					data.add(profit);
				}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		

		data.add(isSuccess);
		return data;
		
	}
	
	public static List<Event> calcStatistics(int id)
	{
		ArrayList<Event> data = new ArrayList();
		
	
		
		try
		{
			Connection con = ConnectDatabase.getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "select Event_Date, c.Username, e.Status, v.Total_Profit from event e, Customer c, event_add ed, advertisement ad, vendor v where e.Cust_ID = c.Cust_ID and e.Event_ID = ed.Event_ID and ed.Ad_ID = ad.Ad_ID and ad.Vendor_ID = v.Vendor_ID and ad.Vendor_ID  = '"+id+"' Order by Event_Date desc";
			
			try 
			{
				ResultSet rs = stmt.executeQuery(sql);
				String actualStatus = "";
				
				while(rs.next())
				{
					String date = rs.getString(1);
					String name = rs.getString(2);
					boolean status = rs.getBoolean(3);
					
					if (status == true)
						actualStatus = "Complete";
					else
						actualStatus = "Ongoing";
							
					double totPrice = rs.getDouble(4);
					
					Event e = new Event(date, name, actualStatus, totPrice);
					data.add(e);
				}
	
				
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
				
				
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return data;
	}

}
