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
 * Servlet implementation class DriverUpdateServlet
 */
@WebServlet("/DriverUpdateServlet")
public class DriverUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("dId");
		String dName = request.getParameter("dName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String lNo = request.getParameter("licenseNo");
		String lExp = request.getParameter("licenseExp");
		String vType = request.getParameter("vType");
		String uName = request.getParameter("uName");
		
		boolean isTrue;
		System.out.println(id);
		isTrue = DriverDBUtil.updateDriver(id, dName, phone, address, email, lNo, lExp, vType, uName);
		
		System.out.println(isTrue);
		if(isTrue == true) {
			
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("DriverAccount.jsp");
			dis1.forward(request, response);			

		}
		else {
			List<Driver> driverDetails = DriverDBUtil.getDriverDetails(id);
			request.setAttribute("driverDetails", driverDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("DriverAccount.jsp");
			dis.forward(request, response);
		}		
		
	}

}
