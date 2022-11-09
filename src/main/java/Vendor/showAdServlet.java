package Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showAdServlet")
public class showAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			List<Advertisement> showDetails= AdvertisementDButil.getAdvertisementDetails(5);
			request.setAttribute("showDetails", showDetails);
			
			System.out.println(showDetails);
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("JSP/services.jsp");
		rd.forward(request, response);
	
	}
}
