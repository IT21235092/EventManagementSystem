package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddEventControl")
public class AddEventControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//name
		String name = request.getParameter("txt");
		
		//checkbox
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String types[] = request.getParameterValues("s1");
		 
		//teaxtarea
		
		String description = request.getParameter("txtarea");
		

		System.out.println(name);
		
		
		
		boolean isTrue;
		isTrue = AdminUtil.AddEvent(name, types, description);
		
		if(isTrue == true)
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
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("JSP/addEvent.jsp");
		dis.forward(request, response);
		

	
	
	}
	
	


}
