package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CheckFeedbackServlet")
public class CheckFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int cid = Integer.parseInt(session.getAttribute("Id").toString());
		
		try {
			
			if( EventDBUtil.checkEvent(cid) == true) {
				
				session.removeAttribute("alertMsg");
				request.setAttribute("alertMsg", "You already have a pending Event. Cannot add feedback!");
				
				RequestDispatcher dis = request.getRequestDispatcher("/getFeedback");
				dis.forward(request, response);
				
				
			}
			
			else {
				
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/AddFeedback.jsp");  
				
				System.out.println("Pending events  do not exist");
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
