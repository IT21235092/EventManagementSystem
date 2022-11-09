package Vendor;

import java.io.IOException; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdServlet")
public class AdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id = Integer.parseInt(session.getAttribute("Id").toString());
		System.out.println( id);
		
		String title = request.getParameter("title");
		float price = Float.parseFloat(request.getParameter("price"));
		String desc = request.getParameter("desc");
		
		
		boolean isSuccess = false;
		
		try
		{
			isSuccess = AdvertisementDBUtil.insertAdvertisement(id,title,price,desc);
			
			if ( isSuccess == true)
			{
				
				RequestDispatcher dis = request.getRequestDispatcher( "JSP/Vendor_dashboard.jsp");
				dis.forward(request, response);
			}
			else 
			{
				RequestDispatcher dis = request.getRequestDispatcher( "unsuccess.jsp");
				dis.forward(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
