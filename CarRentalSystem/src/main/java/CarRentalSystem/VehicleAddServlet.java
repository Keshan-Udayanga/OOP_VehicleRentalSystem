package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleAddServlet
 */
@WebServlet("/VehicleAddServlet")
public class VehicleAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// get newly updated details to the variables
		String ownerName = request.getParameter("ownerName");
		String phone = request.getParameter("contact").trim();
		String email = request.getParameter("email");
		String vType = request.getParameter("vType");
		String licenseDate = request.getParameter("licenseDate");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String color = request.getParameter("color");
		int year = Integer.parseInt(request.getParameter("year"));
		int doors = Integer.parseInt(request.getParameter("doors"));
		int seats = Integer.parseInt(request.getParameter("seats"));
		String tType = request.getParameter("transmission");
		String fType = request.getParameter("fuelType");
		String licens = request.getParameter("license");
		
		
				
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
			    
			    
		try {
			    	
			// check the phone number is exactly 10 digits
			boolean isValidPhoneNumber = CommonDBUtil.validateContactNumber(phone);
			    	
			if(!isValidPhoneNumber) {
				// display alert after the checked
				out.println("<script type='text/javascript'>alert('Please Enter Valid Phone Number !');</script>");
					    
				// redirect to the index.jsp file
				out.println("<script type='text/javascript'>window.location.href = 'DisplayVehicleServelet';</script>");
					    
				return;
					
			}
																						
																					
			    	
			boolean isHavePlateNumber = false;
			
			try {
				// check vehicle plate number is already existed
				isHavePlateNumber =  VehicleDetailsUtill.validateLicensPlateNumber(licens);			
	
				}catch(Exception e) {
					e.printStackTrace();
				}
				    	
				    	
				if(!isHavePlateNumber) {
					// display alert after the checked
					out.println("<script type='text/javascript'>alert('Your Vehicle Plate Number is Already Registered');</script>");
						    
					// redirect to the index.jsp file
					out.println("<script type='text/javascript'>window.location.href = 'Vehicle_login.jsp';</script>");
						    
					return;
				}
			 	
			}catch(Exception e) {
				e.printStackTrace();
			}
			    
			    
			    
				
				
				
			// create vehicle class object to newly added details
			Vehicles vehi = new Vehicles(ownerName,phone,email,vType,brand,model,color,year,doors,seats,tType,fType,licens,licenseDate);
				
			// pass above object to update method in vehicle details controller
			VehicleDetailsUtill.addNewVehicleToTheSystem(vehi);	
				
				
			try {
					
				ArrayList<ArrayList<String>> vehiId = VehicleDetailsUtill.getVehicleIdToDisplay(email,licens,ownerName);
				request.setAttribute("vehicleid", vehiId);
					
				// forward the VehicleIdDisplay.jsp file with above vehicle class object
				RequestDispatcher dis = request.getRequestDispatcher("VehicleIdDisplay.jsp");
				dis.forward(request, response);
					
			}catch(Exception e){
				//
			}
				
				
				
	}

}
