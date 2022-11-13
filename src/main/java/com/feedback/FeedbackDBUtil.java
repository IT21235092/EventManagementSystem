package com.feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customerevent.DBConnect;
import com.customerevent.category;

public class FeedbackDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertFeedback(String feedback, int rating, int cid, int eid) {
		
		
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into feedback values(0,'"+feedback+"','"+rating+"', NULL, '"+cid+"', '"+eid+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<feedback> getCustomerFeedback(int cid){
		
		
		
		
		ArrayList<feedback> fee = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from feedback f , event e where e.event_Id = f.event_Id and f.cust_Id = '"+cid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int fid = rs.getInt(1);
				int cusid = rs.getInt(5);
				String description = rs.getString(2);
				int rating = rs.getInt(3);
				String event = rs.getString(8);
				String date = rs.getString(11);
				
				feedback f = new feedback(fid, cusid, description, rating, event, date);
				
				fee.add(f);
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	
		return fee;
	}
	
	
	public static boolean UpdateFeedback(String fid, String description, String rating) {
		
		boolean isSuccess = false;
		
		int convFid = Integer.parseInt(fid);
		int convRating = Integer.parseInt(rating);
		
		
		try {
			
			String sql = "Update feedback set description = '"+description+"', rating = '"+convRating+"' where Feedback_Id = '"+convFid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0 )
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	
	public static boolean DeleteFeedback(String fid) {
		
		int convId = Integer.parseInt(fid);
		
		boolean isSuccess = false;
		
		try
		{
			
			
			String sql = "delete from feedback where Feedback_Id = '"+convId+"' ";
			
			int rs =stmt.executeUpdate(sql);
			
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
		
		
		
		
		
		
		
		return isSuccess;
	}

}
