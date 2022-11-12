package com.customerevent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bookVendorServlet")
public class bookVendorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		String eid = session.getAttribute("eid").toString();

		// photos
		String paid = request.getParameter("paid");
		

		// Music
		String maid = request.getParameter("maid");
		
		// Decorations
		String daid = request.getParameter("daid");
		

		// Invitation card
		String iaid = request.getParameter("iaid");
		

		// Food and drinks
		String faid = request.getParameter("faid");
		
		
		if (paid.toString() != null) {
			
			try {
				EventDBUtil.insertEventVendor(eid, paid);
				EventDBUtil.updatePrice(paid,eid);
				
			}catch(Exception e) {
				
			}

		}

		
		if(maid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor1(eid,maid);
				EventDBUtil.updatePrice(maid,eid);
				
				
			}catch(Exception e) {
				
			}
		  
		 
		}
		
		if(daid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor2(eid,daid);
				EventDBUtil.updatePrice(daid,eid);
				
			}catch(Exception e) {
				
			}
			  
			  
			 
		}
		
		if(iaid.toString() != null) {
			  
			try {
				
				EventDBUtil.insertEventVendor3(eid,iaid);
				EventDBUtil.updatePrice(iaid,eid);
				
			}catch(Exception e) {
				
			}
			  
			 
		}
		
		if(faid.toString() != null) {
			
			try {
				
				EventDBUtil.insertEventVendor4(eid,faid);
				EventDBUtil.updatePrice(faid,eid);
				
			}catch(Exception e) {
				
			}
			  
			  
			 
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/Paymentform.jsp");
		dis.forward(request, response);

	}

}
