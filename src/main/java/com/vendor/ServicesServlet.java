package com.vendor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServicesServlet
 */
@WebServlet("/ServicesServlet")
public class ServicesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		System.out.println("count");
	try
	{
		Connection con = ConnectDatabase.getConnection();
		Statement stmt = con.createStatement();
	
    
    String sql = "select count(e.Cust_ID) from advertisement a,customer c,event e,event_add ed,vendor v where a.Ad_ID=ed.Ad_ID and e.Event_ID=ed.Event_ID and v.Vendor_ID=a.Vendor_ID group by v.Vendor_ID";
    
    ResultSet rs = stmt.executeQuery(sql);
    
    
    while(rs.next())
    {
    	String count = rs.getString(1);
    	request.setAttribute("VenCount", count);
    	
    }
    
    		
	
	}catch(Exception e)
	{
		System.out.println(e);
		e.printStackTrace();
	}
	
	RequestDispatcher rd = request.getRequestDispatcher("JSP/Vendor_dashboard.jsp");
	rd.forward(request, response);
	

}
}
