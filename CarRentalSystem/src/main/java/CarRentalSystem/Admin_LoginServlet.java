package CarRentalSystem;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin_LoginServlet
 */
@WebServlet("/Admin_LoginServlet")
public class Admin_LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
				
		try {
			
			Admin admin_details = AdminDBUtill.checkAdminLoginDetails(userName,pwd);
			
			if (admin_details.getAdminId() == 0) {
				// Redirect if vehicle not found
				response.sendRedirect("Admin/index.jsp?error=notfound");
				return;
			}
			
			
			request.setAttribute("admin_details", admin_details);
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Admin/Admin_Dashboard.jsp");
			dis.forward(request, response);

		}catch(Exception e) {
			e.printStackTrace();
			
		}
	
	}

}
