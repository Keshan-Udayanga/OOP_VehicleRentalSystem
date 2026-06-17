package CarRentalSystem;

public class Admin {
	
	private int adminId;
	private String user_name;
	private String email;
	private String password;
	private String created_date;
	private String role;
	private String phone_number;
	private String address;
	private String gender;
	
	// default constructor
	public Admin() {}
	
	// overload constructor
	public Admin(int adminId, String user_name, String email, String password, String created_date, String role,
			String phone_number, String address, String gender) {
		super();
		this.adminId = adminId;
		this.user_name = user_name;
		this.email = email;
		this.password = password;
		this.created_date = created_date;
		this.role = role;
		this.phone_number = phone_number;
		this.address = address;
		this.gender = gender;
	}

	
	// getters
	public int getAdminId() {
		return adminId;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getCreated_date() {
		return created_date;
	}

	public String getRole() {
		return role;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public String getAddress() {
		return address;
	}

	public String getGender() {
		return gender;
	}
	
	
	

}
