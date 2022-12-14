package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String org_name = request.getParameter("Org_Name");
		String first_name = request.getParameter("firstName");
		String last_name = request.getParameter("lastName");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String contact = request.getParameter("phone");
		String password = request.getParameter("pswd");
		ArrayList<Object> arr = new ArrayList<>();
		
		
		boolean isSuccess = false;
		int cust_Id = 0;
		
		try
		{
			arr = CustomerDBUtil.insertCustomer(org_name, first_name, last_name, username, email, contact, password);
			System.out.println( arr.get(0));
			isSuccess = (boolean) arr.get(2);
			cust_Id = (int) arr.get(0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("customerType", arr.get(3));
			session.setAttribute("username", arr.get(1));
			session.setAttribute("Id", cust_Id);
			
			RequestDispatcher dis = request.getRequestDispatcher( "JSP/Cust_dashboard.jsp");
			dis.forward(request, response);
		}
		else if ( isSuccess == false)
		{
			
			if ( cust_Id == -1)
			{
				 String message = "Email " + (String)arr.get(1);
				 alert(message, request, response);
			}
			else
			{
				String message = "User Name " + (String)arr.get(1);
				alert(message, request, response);
			}
			
		}
		
	}
	
	
	private void alert(String message, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("<script type=\"text/javascript\">");
		pw.println("alert('The " + message +" has already been taken. Please use an alternative ');");
		pw.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("JSP/CLoginSignup.jsp");
		rd.include(request, response);
	}

}
