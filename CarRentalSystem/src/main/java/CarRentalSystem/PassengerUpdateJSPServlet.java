package CarRentalSystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PassengerUpdateJSPServlet")
public class PassengerUpdateJSPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PassengerUpdateJSPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("userEmail");
		
		List<Passenger> psn = PassengerDBUtil.getProfile(email);
		request.setAttribute("passengerList", psn);
		RequestDispatcher dispatcher = request.getRequestDispatcher("updatePassenger.jsp");
		dispatcher.forward(request, response);
	}

}
