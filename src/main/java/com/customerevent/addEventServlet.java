package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addEventServlet")
public class addEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		String type = session.getAttribute("type").toString();
		String name = session.getAttribute("name").toString();
		String num = session.getAttribute("num").toString();
		String date = session.getAttribute("edate").toString();
		String cid = session.getAttribute("Id").toString();
		String price = session.getAttribute("price").toString();
		Double adminProfit = 0.0;
		Double calculatedProfit = 0.0;
		
		// photos
		String paid = session.getAttribute("paid").toString(); 
		System.out.println(paid);
		// Music
		String maid = session.getAttribute("maid").toString(); 
		System.out.println(maid);	
		// Decorations
		String daid = session.getAttribute("daid").toString(); 
		System.out.println(daid);
		// Invitation card
		String iaid = session.getAttribute("iaid").toString(); 
		System.out.println(iaid);	
		// Food and drinks
		String faid = session.getAttribute("faid").toString(); 
		System.out.println(faid);
		
		session.removeAttribute("serDetails");
		
		
		try {
			
			int eid = EventDBUtil.insertEvent(type, name, num, date, cid, price );
			
			if(eid > 0) 
			{
				adminProfit += 240000;
				
				if (paid.toString() != null) {
					
					try 
					{
						EventDBUtil.insertEventVendor(eid, paid);
						calculatedProfit = EventDBUtil.calculateProfit(paid);
						adminProfit += calculatedProfit;
						
					}
					catch(Exception e) 
					{
						e.printStackTrace();
					}

				}

				
				if(maid.toString() != null)
				{
					
					try
					{
						
						EventDBUtil.insertEventVendor1(eid,maid);
						calculatedProfit = EventDBUtil.calculateProfit(maid);
						adminProfit += calculatedProfit;
					
					}
					catch(Exception e) 
					{
						e.printStackTrace();
					}
				  
				 
				}
				
				if(daid.toString() != null) {
					
					try {
						
						EventDBUtil.insertEventVendor2(eid,daid);
						calculatedProfit = EventDBUtil.calculateProfit(daid);
						adminProfit += calculatedProfit;
						
					}
					catch(Exception e) 
					{
						e.printStackTrace();
					}
					  
					  
					 
				}
				
				if(iaid.toString() != null) {
					  
					try {
						
						EventDBUtil.insertEventVendor3(eid,iaid);
						calculatedProfit = EventDBUtil.calculateProfit(iaid);
						adminProfit += calculatedProfit;
						
						
						
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
					  
					 
				}
				
				if(faid.toString() != null) 
				{
					
					try {
						
						EventDBUtil.insertEventVendor4(eid,faid);
						calculatedProfit = EventDBUtil.calculateProfit(faid);
						adminProfit += calculatedProfit;
						
						
						
					}catch(Exception e) {
						
					}
					  
					  
					 
				}
				
			EventDBUtil.addAdminProfit(adminProfit);
				
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/Cust_dashboard.jsp");  
			}
			else {
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/Cust_dashboard.jsp");  
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
