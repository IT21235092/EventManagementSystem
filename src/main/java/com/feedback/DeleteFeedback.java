package com.feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteFeedback")
public class DeleteFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fid = request.getParameter("fid") ;
		
		boolean isTrue;
		
		isTrue = FeedbackDBUtil.DeleteFeedback(fid);
		
		
		if(isTrue == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher("/getFeedback");
			dis.forward(request, response);
			
		}
	}

}
