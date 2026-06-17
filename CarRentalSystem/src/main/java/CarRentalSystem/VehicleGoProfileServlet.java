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
 * Servlet implementation class VehicleGoProfileServlet
 */
@WebServlet("/VehicleGoProfileServlet")
public class VehicleGoProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleGoProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    doPost(request, response); // forward GET to POST
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		
		String email;
		String id;
		
		if(session.getAttribute("Email") == null) {
			email = request.getParameter("email");
			 id = request.getParameter("vehicleId");
		}
		else {
			email = (String)session.getAttribute("Email");
			id = (String)session.getAttribute("id");
		}
	 
	
		
		
		
		try {
			
			Vehicles vehiProfile = VehicleDetailsUtill.getVehicleDetailsForProfile(id,email);
			
			if (vehiProfile.getVehicleID() == null) {
				// Redirect if vehicle not found
				response.sendRedirect("Vehicle_login.jsp?error=notfound");
				return;
			}
			
			
			request.setAttribute("vehiProfile", vehiProfile);
			session.setAttribute("Email", email);
			session.setAttribute("id", id);
			session.setAttribute("user", "vehicle");
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Vehicle_Profile.jsp");
			dis.forward(request, response);

		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		
	}
		
}
