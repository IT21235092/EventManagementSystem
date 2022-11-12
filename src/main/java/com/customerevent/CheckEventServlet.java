package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CheckEventServlet")
public class CheckEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int cid = Integer.parseInt(session.getAttribute("Id").toString());
		
		try {
			
			if( EventDBUtil.checkEvent(cid) == true) {
				
				session.removeAttribute("alertMsg");
				request.setAttribute("alertMsg", "You already have a pending Event!");
				
				RequestDispatcher dis = request.getRequestDispatcher("/JSP/Cust_dashboard.jsp");
				dis.forward(request, response);
				
				
			}
			
			else {
				
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/bookEvent.jsp");  
				
				System.out.println("Pending events  do not exist");
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
