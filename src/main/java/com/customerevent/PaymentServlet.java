package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		String eid = session.getAttribute("eid").toString();
		
		boolean isTrue;
		
		try {
			
			isTrue = EventDBUtil.paymentValid(eid);
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_dashboard.jsp");
				dis.forward(request, response);
				
				
			}
			else {
				
				response.sendRedirect("http://localhost:8080/EventManagementSystem/JSP/Cust_dashboard.jsp");  
				System.out.println("Payment not updated");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
