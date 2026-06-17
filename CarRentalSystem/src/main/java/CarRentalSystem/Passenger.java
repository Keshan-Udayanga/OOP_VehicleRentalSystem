package CarRentalSystem;

public class Passenger extends User{
	 
	private String address;
	private int age;
	private String gender;
	private String pass;
	
	public Passenger() {
	
	}
	
	public Passenger(String id,String name,String phone, String address, String email, int age, String gender,String pass) {
		super(id,name,phone,email);
	
		this.address = address;
		this.age = age;
		this.gender = gender;
		this.pass = pass;
	}

	public String getName() {
		return super.getName();
	}
	
	public void setName(String name) {
		super.setName(name);
		}

	public String getPhone() {
		return super.getPhone();
	}
	
	public void setPhone(String phone) {
		super.setPhone(phone);
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address =address;
	}

	public void setMail(String email) {
		super.setMail(email);;
	}
	
	public String getEmail() {
		return super.getEmail();
	}


	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getPassword() {
		return pass;
	}
	
	public void setPassword(String pass) {
		this.pass = pass;
	}
	
	public String getID() {
		return super.getId();
	}

	

}
