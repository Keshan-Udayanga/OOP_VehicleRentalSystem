package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PassengerRegServlet")
public class PassengerRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PassengerRegServlet() {
        super();
  
    }
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		
		int age1 = Integer.parseInt(age);
		
		boolean emailvalid = PassengerDBUtil.emailValidation(email);
		boolean phonevalid = PassengerDBUtil.mobileValidation(phone);
		
		if(emailvalid && phonevalid) {
			Passenger passenger = new Passenger();
			passenger.setName(name);
			passenger.setPhone(phone);
			passenger.setMail(email);
			passenger.setAddress(address);
			passenger.setAge(age1);
			passenger.setGender(gender);
			
			boolean inserted = PassengerDBUtil.setPassenger(passenger);
			
			if(inserted) {
				HttpSession session = request.getSession();
				session.setAttribute("userEmail", email);
				session.setAttribute("user", "passenger");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("PassengerPassword.jsp");
				dispatcher.forward(request, response);
				
				response.sendRedirect("PassengerPassword.jsp");
				return;
				
			}
			else {
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type='text/javascript'>");
				out.println("alert('Error in SignIn');");
				out.println("location='PassengerReg.jsp'");
				out.println("</script>");
			}
			
		}
		else if(emailvalid) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Mobile Number Exists');");
			out.println("location='PassengerReg.jsp'");
			out.println("</script>");
		}
		else if(phonevalid) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Email Exists');");
			out.println("location='PassengerReg.jsp'");
			out.println("</script>");
		}
		else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			out.println("<script type='text/javascript'>");
			out.println("alert('Email and Mobile Number Exists');");
			out.println("location='PassengerReg.jsp'");
			out.println("</script>");
		}
	}

}
