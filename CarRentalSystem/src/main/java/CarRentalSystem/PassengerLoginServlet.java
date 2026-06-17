package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PassengerLoginServlet")
public class PassengerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PassengerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean valid = PassengerDBUtil.validateLogin(email, password);
		
		if(valid) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", email);
			session.setAttribute("user", "passenger");
			
			response.sendRedirect("PassengerProfileServlet");
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect User Credentials');");
			out.println("location='PassengerLogin.jsp'");
			out.println("</script>");
			
		}
	}

}
