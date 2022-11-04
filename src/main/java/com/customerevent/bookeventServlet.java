package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/bookeventServlet")
public class bookeventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		int num = Integer.parseInt(request.getParameter("num"));
		String date = request.getParameter("edate");
		
		boolean isTrue; 
		
		isTrue = EventDBUtil.insertEvent(type, name, num, date);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("JSP/bookEvent2.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("JSP/Home.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
