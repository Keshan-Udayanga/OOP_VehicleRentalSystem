package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PassengerPassServlet")
public class PassengerPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public PassengerPassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String pass1 = request.getParameter("pass1");	
		String pass2 = request.getParameter("pass2");
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("userEmail");
		
		boolean valid = PassengerDBUtil.validatePassword(pass1, pass2);
		
		if(valid) {
			boolean setPass = PassengerDBUtil.setPassword(pass1,email);
			
			if(setPass) {
				out.println("<script type='text/javascript'>");
				out.println("alert('SignUp Success');");
				out.println("location='PassengerProfileServlet'");
				out.println("</script>");
			}
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Passwords Mismatch');");
			out.println("location='PassengerPassword.jsp'");
			out.println("</script>");
		}
	
	}

}
