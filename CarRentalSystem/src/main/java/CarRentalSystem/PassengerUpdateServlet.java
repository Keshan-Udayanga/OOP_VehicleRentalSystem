package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PassengerUpdateServlet")
public class PassengerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PassengerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		
		int age1 = Integer.parseInt(age);
		
		boolean phoneValid = PassengerDBUtil.mobileValidation(phone,email);
		
		if(phoneValid) {
			Passenger passenger = new Passenger();
			
			passenger.setName(name);
			passenger.setPhone(phone);
			passenger.setMail(email);
			passenger.setAddress(address);
			passenger.setAge(age1);
			boolean updatedProfile = PassengerDBUtil.updatePassenger(passenger);
			
			if(updatedProfile) {
				response.sendRedirect("PassengerProfileServlet");

			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Update Failed');");
				out.println("location='PassengerProfileServlet'");
				out.println("</script>");
			}
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Mobile Number Exists');");
			out.println("location='PassengerProfileServlet'");
			out.println("</script>");
		}
	}

}
