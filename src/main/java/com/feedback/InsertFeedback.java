package com.feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/InsertFeedback")
public class InsertFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String feedback = request.getParameter("feedback");
		int rating = Integer.parseInt(request.getParameter("rating"));
		HttpSession session = request.getSession();
		int cid = Integer.parseInt(session.getAttribute("Id").toString());
		int eid = Integer.parseInt(request.getParameter("eid"));
		
		boolean isTrue;
		
		isTrue = FeedbackDBUtil.insertFeedback(feedback, rating, cid, eid);
		
		if(isTrue == true) {
			
			
			List<feedback> fDetails = FeedbackDBUtil.getCustomerFeedback(cid);
			request.setAttribute("fDetails", fDetails);
			 
			
			  RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_Feedback.jsp"); 
			  dis.forward(request,response);
			 
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_dashboard.jsp");
			dis.forward(request, response);
		}
		
	}

}
