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
	
	public static List<category> getCategory(){
		
		ArrayList <category> cat = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from category";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String category = rs.getString(1);
				
				category c = new category(category);
				
				cat.add(c);
			
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cat;
	}
	
	public static boolean insertEvent(String type, String name, int num, String date) {
		
		boolean isSuccess = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into event values(0,'"+name+"','"+num+"', '"+type+"', '"+date+"',850000,1)";
			
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
	public static boolean insertEventVendor(/* String eid, */ String paid, String pvid) {
		
		/* int convEid = Integer.parseInt(eid); */
		int convAid = Integer.parseInt(paid);
		int convVid = Integer.parseInt(pvid);
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into event_add values(0, 1,'"+convAid+"', '"+convVid+"')";
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
		public static boolean insertEventVendor1(/* String eid, */ String maid, String mvid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(maid);
			int convVid = Integer.parseInt(mvid);
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,1,'"+convAid+"', '"+convVid+"')";
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
		public static boolean insertEventVendor2(/* String eid, */ String daid, String dvid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(daid);
			int convVid = Integer.parseInt(dvid);
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,1,'"+convAid+"', '"+convVid+"')";
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
		public static boolean insertEventVendor3(/* String eid, */ String iaid, String ivid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(iaid);
			int convVid = Integer.parseInt(ivid);
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,1,'"+convAid+"', '"+convVid+"')";
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
		public static boolean insertEventVendor4(/* String eid, */ String faid, String fvid) {
			
			/* int convEid = Integer.parseInt(eid); */
			int convAid = Integer.parseInt(faid);
			int convVid = Integer.parseInt(fvid);
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into event_add values(0,1,'"+convAid+"', '"+convVid+"')";
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
	
}
