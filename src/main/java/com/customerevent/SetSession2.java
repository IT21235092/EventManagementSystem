package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SetSession2")
public class SetSession2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		String edate = request.getParameter("edate");
		String price = request.getParameter("price");
		
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
		
		
		HttpSession session = request.getSession();
		
		session.setAttribute("type", type);
		session.setAttribute("name", name);
		session.setAttribute("num", num);
		session.setAttribute("edate", edate);
		session.setAttribute("price", price);
		
		session.setAttribute("paid", paid);
		session.setAttribute("maid", maid);
		session.setAttribute("daid", daid);
		session.setAttribute("iaid", iaid);
		session.setAttribute("faid", faid);
		
		RequestDispatcher dis = request.getRequestDispatcher("/JSP/Paymentform.jsp");
		dis.forward(request, response);
		
	}

}
