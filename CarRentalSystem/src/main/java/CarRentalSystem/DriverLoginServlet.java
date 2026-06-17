package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DriverLoginServlet
 */
@WebServlet("/DriverLoginServlet")
public class DriverLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    doPost(request, response); // forward GET to POST
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		String username;
		String password;
		
		if(session.getAttribute("userName") != null) {
			username = (String)session.getAttribute("userName");
			password= (String)session.getAttribute("password");
		}
		else {
			
			 username = request.getParameter("un");
			 password = request.getParameter("pw");
			 System.out.println(username + password);
		}
				
		try {
			
			List<Driver> driverDetails = DriverDBUtil.validate(username, password);
			request.setAttribute("driverDetails", driverDetails); 
			
			if(driverDetails.isEmpty()) {
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Incorrect User Credentials');");
				out.println("location='DriverLoginPage.jsp'");
				out.println("</script>");
			}
			else {
				if(session.getAttribute("userName") == null) {
					session.setAttribute("user", "driver");
					session.setAttribute("userName", username);
					session.setAttribute("password", password);
					
					
				}
				
				RequestDispatcher dis = request.getRequestDispatcher("DriverAccount.jsp");
				dis.forward(request, response);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
	}

}
