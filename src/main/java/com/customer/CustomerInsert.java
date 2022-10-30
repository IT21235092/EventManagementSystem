package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String org_name = request.getParameter("Org_Name");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("phone");
		String password = request.getParameter("pswd");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertCustomer(org_name, username, email, contact, password);
		
		if (isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher( "Cust_dashboard.jsp");
			dis.forward(request, response);
		}
	}

}
