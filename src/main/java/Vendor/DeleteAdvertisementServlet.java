package Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAdvertisementServlet")
public class DeleteAdvertisementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("delete"));
		boolean isTrue;
		
		isTrue = AdvertisementDBUtil.deleteAdvertisement(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Advertisement> adDetails = AdvertisementDBUtil.getAdvertisementDetails(id);
			request.setAttribute("adDetails", adDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
