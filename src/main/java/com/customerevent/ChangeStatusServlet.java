package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChangeStatusServlet")
public class ChangeStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int evnt = Integer.parseInt(request.getParameter("evnt"));
		
		try {
			
			if(EventDBUtil.setEventStatus(evnt) == true) {
				
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/Cust_dashboard.jsp");  
				
			}
			
			else {
				RequestDispatcher dis = request.getRequestDispatcher("/JSP/Cust_dashboard.jsp");
				dis.forward(request, response);
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
	}

}
