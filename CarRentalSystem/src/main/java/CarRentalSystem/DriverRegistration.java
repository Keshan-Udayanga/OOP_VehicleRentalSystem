package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DriverRegistration
 */
@WebServlet("/DriverRegistration")
public class DriverRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String name = request.getParameter("dName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String licenseNo = request.getParameter("licenseNo");
		String licenseExp = request.getParameter("licenseExp");
		String vType = request.getParameter("vType");
		String uName = request.getParameter("uName");
		String pass = request.getParameter("pass");
		
		boolean isTrue;
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
	    	
			// check the phone number is exactly 10 digits
			boolean isValidPhoneNumber = CommonDBUtil.validateContactNumber(phone);
			    	
			if(!isValidPhoneNumber) {
				// display alert after the checked
				out.println("<script type='text/javascript'>alert('Please Enter Valid Phone Number !');</script>");
					    
				// redirect to the index.jsp file
				out.println("<script type='text/javascript'>window.location.href = 'DriverRegistration.jsp';</script>");
					    
				return;
			}
					
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		isTrue = DriverDBUtil.insertDriver(name, phone, address, email, licenseNo, licenseExp, vType, uName, pass);
		
		if(isTrue == true) {
			String alert = "Data Inserted Successfully!";
			response.getWriter().println("<script> alert('"+alert+"');window.location.href = 'DriverLoginPage.jsp'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}	
		
		
		
		
	}

}
