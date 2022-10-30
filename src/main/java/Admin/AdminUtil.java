package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class AdminUtil {
	
	public static boolean AddEvent(String name, String typs[], String desc)
	{
		boolean isSuccess =false;
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into category values('"+name+"',NULL,'"+desc+"',1)";
			
			String sql2 = "insert into category_services values";
			for(int i = 0 ; i<typs.length ; i++)
			{
				if(i==typs.length-1) 
				{
					sql2+="('"+name+"','"+typs[i]+"')";
					
					continue;
				}
					sql2+="('"+name+"','"+typs[i]+"'),";
					
			}
			int rs = stmt.executeUpdate(sql);
			
			int rs2 = stmt.executeUpdate(sql2);
			
			if(rs>0 && rs2>0)
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
