package com.customerevent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SetSessionServlet")
public class SetSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		String edate = request.getParameter("edate");
		
		
		
		HttpSession session = request.getSession();
		
		session.setAttribute("type", type);
		session.setAttribute("name", name);
		session.setAttribute("num", num);
		session.setAttribute("edate", edate);
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("/bookeventServlet");
		dis.forward(request, response);
		
	}

}
