package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vendor.Vendor;

public class AdminUtil {
	
	public static boolean chck;
	
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
	
	public static List<AdminFetch> fetchAdminEvent()
	{
		ArrayList<AdminFetch> ad = new ArrayList();
		ArrayList<String> ty = new ArrayList();
		ArrayList<String> queries = new ArrayList();
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			//fetching
			
			String sql3 = "select * from category ";
			String sql4 = "";
			int count2=0;
			
			ResultSet rs3 = stmt.executeQuery(sql3);
			
				while(rs3.next())
				{
					String nm= rs3.getNString(1);
					
					ty.add(nm);
					ty.add(rs3.getNString(3));
					
					sql4="select * from category_services where Cat_Name = '"+nm+"';";
					queries.add(sql4);
				}
			
			for (String q : queries)
			{
				ResultSet rs4 = stmt.executeQuery(q);
				
				try 
				{
					String typ[] = new String[6];
					int count = 0;
								
					while(rs4.next())
					{
						try 
						{
							typ[count] = rs4.getString(2);
							count++;
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
					}
					
					AdminFetch adf = new AdminFetch(ty.get(count2),ty.get(count2+1),typ);
					
					ad.add(adf);
					
					count2 += 2;
				}
				finally
				{
					rs4.close();
				}
				
			}
			
				
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ad;
	}
	
	public static boolean deleteEvent(String name)
	{
		//boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql6 = "delete from category where Cat_Name = '"+name+"' ";
			
			int rs6 =stmt.executeUpdate(sql6);
			
			if(rs6 > 0)
			{
				chck = true;
			}
			else
			{
				chck = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return chck;
	}
	
	
	public static boolean UpdateEvent(String name, String typs[], String desc)
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
			
			String sql = "update category set Description = '"+desc+"'"
					+"where Cat_Name ='"+name+"'";
			
			String sql6 = "delete from category_services where Cat_Name = '"+name+"' ";
			
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
			
			int rs6 =stmt.executeUpdate(sql6);
			
			int rs2 = stmt.executeUpdate(sql2);
			
			
			
			if(rs>0 && rs2>0 && rs6>0)
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
	
	
	public static List<Object> CountCustomers()
	{
		boolean isSuccess= false;
		ArrayList<Object> ob = new ArrayList();
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			//fetching
			
			String sql1 = "select count(Cust_ID) from customer ";
			String sql2 = "select count(Event_ID) from event where Status = True";
			String sql3 = "select count(Event_ID) from event where Status = False";
			String sql4 = "select Total_Profit from admin";
			
			
			try {
			
				ResultSet rs3 = stmt.executeQuery(sql1);
				
				while(rs3.next())
				{
					int cusCount =  rs3.getInt(1);
					ob.add(cusCount);		
				}
				
				ResultSet rs4 = stmt.executeQuery(sql2);
				
				while(rs4.next())
				{
					int eventCount1 = rs4.getInt(1);
					ob.add(eventCount1);
				}
				
				ResultSet rs5 = stmt.executeQuery(sql3);
				
				while(rs5.next())
				{
					int eventCount2 = rs5.getInt(1);
					ob.add(eventCount2);
				}
				
				ResultSet rs6 = stmt.executeQuery(sql4);
				
				while(rs6.next())
				{
					isSuccess = true;
					double profit = rs6.getDouble(1);
					ob.add(profit);
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
		
		ob.add(isSuccess);
		return ob;
	}
	
	
	public static List<Event> calcStatistics()
	{
		ArrayList<Event> data = new ArrayList();
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select Event_Date, c.Username, e.Status, e.Total_Price from event e, Customer c where e.Cust_ID = c.Cust_ID Order by Event_Date desc LIMIT 6";
			
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
	
	
	public static List<Vendor> calTopVendors()
	{
		ArrayList<Vendor> ven = new ArrayList<Vendor>();
		
		
		String url = "jdbc:mysql://localhost:3306/event_management_system";
		String user = "root";
		String pass = "eventmanagement123";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select Org_Name, Total_Profit from vendor order by Total_Profit DESC LIMIT 6";
			
			try 
			{
				ResultSet rs = stmt.executeQuery(sql);
				
				if ( rs.next())
				{
					String orgName = rs.getString(1);
					Double totProfit = rs.getDouble(2);
					System.out.println( orgName );
					
					Vendor v = new Vendor(orgName, totProfit);
					ven.add(v);
		
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
		
		
		return ven;
		
	}
	
	
}
