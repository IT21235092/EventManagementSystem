package com.feedback;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateFeedback")
public class UpdateFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String feedback = request.getParameter("feedback");
		String rating = request.getParameter("rating");
		String fid = request.getParameter("fid");
		
		
		
		boolean isTrue;
		
		isTrue = FeedbackDBUtil.UpdateFeedback(fid, feedback, rating);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("/getFeedback");
			dis.forward(request, response);

			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_dashboard.jsp");
			dis.forward(request, response);
			
		}
		
		
		
	}

}
