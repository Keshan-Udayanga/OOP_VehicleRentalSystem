package CarRentalSystem;
import java.util.List;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingDeleteServlet")
public class BookingDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int id = Integer.parseInt(request.getParameter("id").trim());
		boolean isTrue;
		isTrue = BookingController.deletedata(id);
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='index.jsp';</script>");
		}
		else {
			List<BookingModel> bookingDetails = BookingController.getbyId(id);
			request.setAttribute("bookingDetails", bookingDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	
	}
	
}

