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

import com.vendor.Vendor;


@WebServlet("/CountCustomerServelet")
public class CountCustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isSuccess = false;
		ArrayList <Object> cnt = new ArrayList<>();
		ArrayList <Event> statistics = new ArrayList<Event>();
		ArrayList <Vendor> topVendors = new ArrayList<Vendor>();
		try 
		{
			cnt = (ArrayList<Object>) AdminUtil.CountCustomers();
			statistics = (ArrayList<Event>) AdminUtil.calcStatistics();
			topVendors = (ArrayList<Vendor>) AdminUtil.calTopVendors();
			 
			isSuccess = (boolean) cnt.get(4);
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		if(isSuccess==true)
		{
			int cusCount = (int) cnt.get(0);
			int eventCount1 = (int) cnt.get(1);
			int eventCount2 = (int) cnt.get(2);
			double profit = (double) cnt.get(3);
			request.setAttribute("countCus", cusCount);
			request.setAttribute("countEvent1", eventCount1);
			request.setAttribute("countEvent2", eventCount2);
			request.setAttribute("profit", profit);
			request.setAttribute("Statistics", statistics);
			request.setAttribute("topVendors", topVendors);
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/admin_dashboard.jsp");
		dis.forward(request, response);
	}

}
