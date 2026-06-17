package CarRentalSystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PassengerDeleteServlet")
public class PassengerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PassengerDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("userEmail");
		
		boolean deleted = PassengerDBUtil.deletePassenger(email);
		
		if(deleted) {
			HttpSession session1 = request.getSession(false);
			
			if(session1 != null) {
				session1.invalidate();
			}
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Account Deleted');");
			out.println("location='PassengerLogin.jsp'");
			out.println("</script>");
		}
	}

	

}
