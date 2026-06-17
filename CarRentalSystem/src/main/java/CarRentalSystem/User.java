package CarRentalSystem;

public class User {
	
	private String id;
	private String name;
	private String phone;
	private String email;
	
	User(){}
	
	User(String name, String phone, String email){
		this.name = name;
		this.phone = phone;
		this.email = email;
	}
	
	User(String id, String name, String phone, String email){
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}
	
	//set mail
	public void setMail(String email) {
		this.email = email;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
}
