package CarRentalSystem;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookingController {
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata(String name,String email,String phoneNo,String address, String driver,
			String p_Location, String d_Location, String direction, String d_Date, String d_Time) {
				
		boolean isSuccess = false;
		
		try {
			//DB CONNECTION CALL
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into booking values(0,'"+name+"','"+email+"','"+phoneNo+"','"+address+"','"+driver+"','"+p_Location+"','"+d_Location+"','"+direction+"','"+d_Date+"','"+d_Time+"')";
			int rs = stmt.executeUpdate(sql);
			
			
			isSuccess = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	//GetById
	public static List<BookingModel> getbyId (int Id){
		
		int convertedId = Id;
		
		ArrayList <BookingModel> booking = new ArrayList<>();
		
		try {
			
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql = "select * from booking where id = "+convertedId+"   ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phoneNo = rs.getString(4);
				String address = rs.getString(5);
				String driver = rs.getString(6);
				String p_Location = rs.getString(7);
				String d_Location = rs.getString(8);
				String direction = rs.getString(9);
				String d_Date = rs.getString(10);
				String d_Time = rs.getString(11);
				
				BookingModel bk = new BookingModel(id,name,email,phoneNo,address,driver,p_Location,d_Location,direction,d_Date,d_Time);
				booking.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return booking;
	}
	
	//GetAll Data
	public static List<BookingModel> getAllBooking() {
	    ArrayList<BookingModel> bookings = new ArrayList<>();

	    try {
	        // DB Connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();

	        // Query to get the last booking
	        String sql = "SELECT * FROM booking ORDER BY id DESC LIMIT 1";
	        rs = stmt.executeQuery(sql);

	        if (rs.next()) {  
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String email = rs.getString(3);
	            String phoneNo = rs.getString(4);
	            String address = rs.getString(5);
	            String driver = rs.getString(6);
	            String p_Location = rs.getString(7);
	            String d_Location = rs.getString(8);
	            String direction = rs.getString(9);
	            String d_Date = rs.getString(10);
	            String d_Time = rs.getString(11);

	            BookingModel bk = new BookingModel(id, name, email, phoneNo, address, driver, p_Location, d_Location, direction, d_Date, d_Time);
	            bookings.add(bk);
	            
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return bookings;
	}
	
	
	
	
	
	//Update Data
	// Update Data
	public static boolean updatedata(int id, String name, String email, String phoneNo, String address, String driver, String p_Location, String d_Location, String direction, String d_Date, String d_Time) {
	    
		boolean isSuccess = false;
		
		try {
	        // DB Connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // SQL Update Query
	        String sql = "UPDATE booking SET name='" + name + "', email='" + email + "', phoneNo='" + phoneNo + "', address='" + address + "', driver='" + driver + "', p_Location='" + p_Location + "', d_Location='" + d_Location + "', direction='" + direction + "', d_Date='" + d_Date + "', d_Time='" + d_Time + "' WHERE id=" + id +"   ";
	        
	        int rs = stmt.executeUpdate(sql);
	        
	      
	            isSuccess = true;
	        
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}

	
	//Delete Data
	public static boolean deletedata(int id) {
		int convID = id;
		boolean isSuccess = false;
		try {
			//DBCONNECTION
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from booking where id="+convID+"   ";
			
			int rs = stmt.executeUpdate(sql);
			
			
				isSuccess = true;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
