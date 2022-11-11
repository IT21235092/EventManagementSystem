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
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		int num = Integer.parseInt(request.getParameter("num"));
		String date = request.getParameter("edate");
		int cid = Integer.parseInt(request.getParameter("cid"));
		
		HttpSession session = request.getSession();
		session.removeAttribute("serDetails");
		
		boolean isTrue;
		
		try {
			isTrue = EventDBUtil.insertEvent(type, name, num, date, cid);
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("/eventInsert");
				dis.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
