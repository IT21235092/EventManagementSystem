package Vendor;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.CustomerDBUtil;

/* Servlet implementation class AdServlet*/

@WebServlet("/AdServlet")
public class AdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int vid = Integer.parseInt(request.getParameter("vid"));
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		float price = Float.parseFloat(request.getParameter("price"));
		String attach = request.getParameter("attach");
		
		ArrayList arr = new ArrayList<>();
		
		boolean isSuccess = false;
		
		
		try
		{
			isSuccess = AdvertisementDButil.insertAdvertisement(vid, name, title, desc, price, attach);
			isSuccess = (boolean) arr.get(1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		if ( isSuccess == true)
		{
			
			RequestDispatcher dis = request.getRequestDispatcher( "JSP/success.jsp");
			dis.forward(request, response);
		}
	
		
	}

}
