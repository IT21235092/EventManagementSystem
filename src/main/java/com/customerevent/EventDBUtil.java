package com.customerevent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

public class EventDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static ResultSet rs1 = null;
	
	
	public static int insertEvent(String type, String name, String num, String date, String cid, String price) {
		
		int eid = 0;
		
		int convCid = Integer.parseInt(cid);
		double convPrice = Double.parseDouble(price);
		int convNum = Integer.parseInt(num);
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into event values(0,'"+name+"','"+convNum+"', '"+type+"', '"+date+"','"+convPrice+"','"+convCid+"', 0)";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				String sql1 = "SELECT Event_Id from event where cust_id = '"+convCid+"' ORDER BY Event_Id DESC LIMIT 1";
				rs1 = stmt.executeQuery(sql1);
				
				while(rs1.next()) {
					
					eid = rs1.getInt("Event_Id");
				}

			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return eid;
		
	}
	
	public static List<services> getServices(String type ){
		
		
		ArrayList<services> ser = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql1 = "select * from category_services where Cat_Name = '"+type+"'";
			rs = stmt.executeQuery(sql1);
			
			while(rs.next()) {
				
				String service = rs.getString(2);
				
				services s = new services(type, service);
				
				ser.add(s);
				
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ser;
		
	}
	
	public static List<vendor> getVendors(String service){
		
		ArrayList<vendor> ven = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql5 = "select * from advertisement a, Vendor v where v.Vendor_ID = a.Vendor_ID and v.Type = '"+service+"'";
			rs = stmt.executeQuery(sql5);
			
			while(rs.next()) {
				
				
				String name = rs.getString(7);
				double price = rs.getDouble(3);
				String desc = rs.getString(4);
				String loc = rs.getString(14);
				
				vendor v = new vendor(name, desc, price, loc);
				
				ven.add(v);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ven;
		
	}
	
	
	//Photos
	public static boolean insertEventVendor(int eid, String paid) {
		
		/* int convEid = Integer.parseInt(eid); */
		int convAid = Integer.parseInt(paid);
		
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into event_add values(0, '"+eid+"','"+convAid+"')";
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
	
	
	//Music
		public static boolean insertEventVendor1(int eid, String maid) {
			
			/* int convEid = Integer.parseInt(eid); */ 
			int convAid = Integer.parseInt(maid);
			
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,'"+eid+"','"+convAid+"')";
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
		
		
		//Deco
		public static boolean insertEventVendor2(int eid,  String daid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(daid);
			
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,'"+eid+"','"+convAid+"')";
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
		
		
		//Invitation
		public static boolean insertEventVendor3(int eid,  String iaid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(iaid);
			
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,'"+eid+"','"+convAid+"')";
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
		
		//Food
		public static boolean insertEventVendor4(int eid, String faid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(faid);
			
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0, '"+eid+"','"+convAid+"')";
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
	
	
	public static ArrayList retrieveAdDetails(int id) throws SQLException{
		
		
		
		
		ArrayList li = new ArrayList<>();
	
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select v.Org_Name, a.Price, v.Vendor_ID, a.Ad_ID\r\n"
					+ "from advertisement a , vendor v\r\n"
					+ "where a.vendor_id = v.vendor_id and a.Ad_ID = '"+id+"'";
			
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				
				String name= rs.getString(1);
				double price = rs.getDouble(2);
				int vid = rs.getInt(3);
				int aid = rs.getInt(4);
				
				
				li.add(name);
				li.add(price);
				li.add(aid);
				li.add(vid);
				
				
				
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return li;
		
	}
	
	
	public static boolean updatePrice(String aid, String eid) {
		
		
		int convEid = Integer.parseInt(eid); 
		int convAid = Integer.parseInt(aid); 
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select Price from advertisement where ad_Id = '"+convAid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				Double price = rs.getDouble(1);
				String sql1 = "Update event set Total_price = (Total_price + '"+price+"') where event_Id = '"+convEid+"'";
				
				int rs1 = stmt.executeUpdate(sql1);
				
				if(rs1 > 0)
				{
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}

			}
			
			
		}catch(Exception e) {
			
			
		}
		
	
		return isSuccess;
	}
	
	public static boolean checkEvent(int cid) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from event where cust_id = '"+cid+"' and status = 0";
			rs = stmt.executeQuery(sql);
					
					
			if(rs.next() == true) 
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
		
		
		
		return isSuccess;
	}
	
	
	public static Double calculateProfit(String aid)
	{
		Double adminProfit = 0.0;
		Double vendorProfit = 0.0;
		int vid = 0;
		int adId = Integer.parseInt(aid);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select Vendor_ID, Price from advertisement where Ad_ID = '"+adId+"'";
			rs = stmt.executeQuery(sql);
					
					
			if(rs.next() == true) 
			{
				vid = rs.getInt(1);
				vendorProfit  = rs.getDouble(2);
				adminProfit = 0.1*vendorProfit;
				vendorProfit = 0.9*vendorProfit;
				
				String sql2 = "Update vendor set Total_Profit = Total_Profit + '"+vendorProfit+"' where Vendor_ID = '"+vid+"'";
				int rs1 = stmt.executeUpdate(sql2);
				
				if ( rs1 > 0)
				{
					return adminProfit;
				}
				else
				{
					adminProfit = 0.0;
				}
				
			}
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return adminProfit;
	}
	
	
	public static void addAdminProfit(Double adminProfit)
	{
		try 
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update admin set Total_Profit = Total_Profit + '"+adminProfit+"' where Admin_ID = 1";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				System.out.println( "Success" );
			}
			else
			{
				System.out.println( "Unsuccess" );
			}
						
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	public static boolean setEventStatus(int eid) {
		
		boolean isSuccess = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update event Status = 1 where event_id = '"+eid+"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	
	
}
