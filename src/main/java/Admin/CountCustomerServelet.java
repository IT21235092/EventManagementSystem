package Admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CountCustomerServelet")
public class CountCustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isSuccess = false;
		ArrayList <Object> cnt = new ArrayList();
		try 
		{
			cnt = (ArrayList<Object>) AdminUtil.CountCustomers();
			isSuccess = (boolean) cnt.get(1);
	
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		if(isSuccess==true)
		{
			int count = (int) cnt.get(0);
			request.setAttribute("CountCus", count);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/admin_dashboard.jsp");
		dis.forward(request, response);
	}

}
