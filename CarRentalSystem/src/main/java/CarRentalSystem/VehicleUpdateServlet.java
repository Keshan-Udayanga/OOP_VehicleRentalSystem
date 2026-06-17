package CarRentalSystem;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleUpdateServlet
 */
@WebServlet("/VehicleUpdateServlet")
public class VehicleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// get newly updated details to the variables
		String VehicleID = request.getParameter("vehicleID").trim();
		String ownerName = request.getParameter("ownerName");
		String phone = request.getParameter("contact");
		String email = request.getParameter("email").trim();
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String color = request.getParameter("color");
		int year = Integer.parseInt(request.getParameter("year"));
		int doors = Integer.parseInt(request.getParameter("doors"));
		int seats = Integer.parseInt(request.getParameter("seats"));
		String tType = request.getParameter("transmission");
		String fType = request.getParameter("fuelType");
		String licens = request.getParameter("license");
		String vType = request.getParameter("vType");
		String licenseDate = request.getParameter("licenseDate");
		
		System.out.println(vType + licenseDate);
		
		try {
			
			// create vehicle class object to newly added details
			Vehicles vehi = new Vehicles(VehicleID,ownerName,phone,email,vType,brand,model,color,year,doors,seats,tType,fType,licens,licenseDate);			
			// pass above object to update method in vehicle details controller
			VehicleDetailsUtill.updateVehicleToTheSystem(vehi);
			
			// return the vehicle class object related to the vehicle id and email and assign it new object 
			Vehicles vehiProfile = VehicleDetailsUtill.getVehicleDetailsForProfile(VehicleID,email);
			request.setAttribute("vehiProfile", vehiProfile);

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// forward the vehicle profile jsp file with above vehicle class object
		RequestDispatcher dis = request.getRequestDispatcher("Vehicle_Profile.jsp");
		dis.forward(request, response);
				
		
		
	}

}
