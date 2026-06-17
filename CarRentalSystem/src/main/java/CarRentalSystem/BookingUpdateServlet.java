package CarRentalSystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingUpdateServlet")
public class BookingUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").trim());
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNo = request.getParameter("phoneNo");
        String address = request.getParameter("address");
        String driver = request.getParameter("driver");
        String p_Location = request.getParameter("p_Location");
        String d_Location = request.getParameter("d_Location");
        String direction = request.getParameter("direction");
        String d_Date = request.getParameter("d_Date");
        String d_Time = request.getParameter("d_Time");

        boolean isTrue;
        // Update booking details using the bookingControl method
        isTrue = BookingController.updatedata(id, name, email, phoneNo, address, driver, p_Location, d_Location, direction, d_Date, d_Time);

        if (isTrue) {
            // If update is successful, redirect to the display page
            response.sendRedirect("BookingGetAllServlet");
        } else {
            // If update failed, forward to an error page
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
    
	}

}
