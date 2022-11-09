package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/InitialSettings1")
public class InitialSettings1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String custType = session.getAttribute("customerType").toString();
		int id  = Integer.parseInt(session.getAttribute("Id").toString());
	    System.out.println(id);
	
		try 
		{
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);	
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		if ( custType.equalsIgnoreCase("Cus"))
		{
			RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_Settings.jsp");
			dis.forward(request, response);
		}
		else
		{

			RequestDispatcher dis = request.getRequestDispatcher("JSP/Cust_Settings2.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
