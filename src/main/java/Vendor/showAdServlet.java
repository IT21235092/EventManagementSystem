package Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/showAdServlet")
public class showAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id = Integer.parseInt(session.getAttribute("Id").toString());
		
		try {
			List<Advertisement> showDetails = AdvertisementDBUtil.getAdvertisementDetails(id);
			request.setAttribute("showDetails", showDetails);
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("JSP/services.jsp");
		rd.forward(request, response);
	
	}
}
