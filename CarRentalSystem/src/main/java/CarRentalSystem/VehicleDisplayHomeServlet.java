package CarRentalSystem;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VehicleDisplayHomeServlet
 */
@WebServlet("/VehicleDisplayHomeServlet")
public class VehicleDisplayHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("id").trim();
		
		HttpSession session = request.getSession();
		
		try {
			
			ArrayList<Vehicles> vehicleArr = VehicleDetailsUtill.getAllVehicle();
			request.setAttribute("vehicle", vehicleArr);
			
			
			if("vehicle".equals(id)) {
				RequestDispatcher dis = null;
				
				if(session.getAttribute("user") == null) {
					dis = request.getRequestDispatcher("Vehicle.jsp");
				}else {
					dis = request.getRequestDispatcher("LoggedVehicle.jsp");
				}
				
				dis.forward(request, response);
				return;
			}else if("New".equals(id)) {
				RequestDispatcher dis = request.getRequestDispatcher("Vehicle_Add.jsp");
				dis.forward(request, response);
				return;
			}else {
				//
			}
				

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
			
	}


}
