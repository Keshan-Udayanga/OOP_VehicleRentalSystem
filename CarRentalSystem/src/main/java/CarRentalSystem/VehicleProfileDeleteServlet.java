package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleProfileDeleteServlet
 */
@WebServlet("/VehicleProfileDeleteServlet")
public class VehicleProfileDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleProfileDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		
		boolean isDeleted = VehicleDetailsUtill.deleteVehicleProfile(id, email);
		
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
		
		if(isDeleted) {
			
			// display alert after the delete
			out.println("<script type='text/javascript'>alert('Successfully deleted!');</script>");
		    
		    // redirect to the index,jsp file
		    out.println("<script type='text/javascript'>window.location.href = 'index.jsp';</script>");
		}
		
		
	}

}
