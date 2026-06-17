package CarRentalSystem;

public class CommonDBUtil {
	
	// validate phone number
	public static boolean validateContactNumber(String number) {
			
		boolean isValid = false;
			
		try {
			if (number.length()==10) {
				 isValid = true;
			 }
		} catch (Exception e) {
			e.printStackTrace(); 
		}
			
		return isValid;
			
	}

}
