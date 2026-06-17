package CarRentalSystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DriverDeleteServlet
 */
@WebServlet("/DriverDeleteServlet")
public class DriverDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("dId");
		boolean isTrue;
		
		isTrue = DriverDBUtil.deleteDriver(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("DriverRegistration.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("DriverAccount.jsp");
			dispatcher.forward(request, response);
		}		
		
	}

}
