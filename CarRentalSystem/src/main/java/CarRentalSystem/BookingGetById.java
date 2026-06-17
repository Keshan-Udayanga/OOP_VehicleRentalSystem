package CarRentalSystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookingGetById")
public class BookingGetById extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").trim())	;
		
		List<BookingModel> booking = BookingController.getbyId(id);
		request.setAttribute("booking", booking);

		RequestDispatcher dispatcher = request.getRequestDispatcher("BookingUpdate.jsp"); // must match your JSP file name
		dispatcher.forward(request, response);
	}

}
