package com.vendor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Admin.AdminUtil;
import Admin.Event;

/**
 * Servlet implementation class ServicesServlet
 */
@WebServlet("/ServicesServlet")
public class ServicesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    int count = 0;
    boolean isSuccess = false;
    
    HttpSession session = request.getSession();
    int venId = Integer.parseInt(session.getAttribute("Id").toString());
    ArrayList <Object> cnt = new ArrayList<>();
    ArrayList <Event> statistics = new ArrayList<Event>();
		
	try
	{
		
		cnt = (ArrayList<Object>) VendorDBUtil.CountData(venId);
		statistics = (ArrayList<Event>) VendorDBUtil.calcStatistics(venId);
		isSuccess = (boolean) cnt.get(4);
	
	}
	catch(Exception e)
	{
		System.out.println(e);
		e.printStackTrace();
	}
	
	
	if(isSuccess==true)
	{
		int cusCount = (int) cnt.get(0);
		int eventCount1 = (int) cnt.get(1);
		int eventCount2 = (int) cnt.get(2);
		double profit = (double) cnt.get(3);
		request.setAttribute("countCus", cusCount);
		request.setAttribute("countEvent1", eventCount1);
		request.setAttribute("countEvent2", eventCount2);
		request.setAttribute("profit", profit);
		request.setAttribute("Statistics", statistics);
//		request.setAttribute("topVendors", topVendors);
		
	}
	
	RequestDispatcher rd = request.getRequestDispatcher("JSP/Vendor_dashboard.jsp");
	rd.forward(request, response);
	

}
}
