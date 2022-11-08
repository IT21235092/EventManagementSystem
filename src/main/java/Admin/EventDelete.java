package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventDelete")
public class EventDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("txt");
		
		boolean isTrue;
		
		isTrue = AdminUtil.deleteEvent(name);
		
		
		if(isTrue == true)
		{
			
				RequestDispatcher dis = request.getRequestDispatcher("AddEventControl2");
				dis.forward(request, response);
			
		}
	}

}
