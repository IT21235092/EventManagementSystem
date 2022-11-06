package Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddEventControl2")
public class AddEventControl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		try 
		{
			List<AdminFetch> adfetch = AdminUtil.fetchAdminEvent();
			request.setAttribute("adfetch", adfetch);	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/addEvent.jsp");
		dis.forward(request, response);
		

	
	}

}
