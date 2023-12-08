package com.booking;

public class View {
	
	private int id;
	private String nic;
	private String name;
	private String address;
	private String proffesion;
	private String date;
	private String contact;
	private String email;
	
	public View(int id, String nic, String name, String address, String proffesion, String date, String contact,
			String email) {
		super();
		this.id = id;
		this.nic = nic;
		this.name = name;
		this.address = address;
		this.proffesion = proffesion;
		this.date = date;
		this.contact = contact;
		this.email = email;
	}

	
	


	public int getId() {
		return id;
	}

	public String getNic() {
		return nic;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getProffesion() {
		return proffesion;
	}

	public String getDate() {
		return date;
	}

	public String getContact() {
		return contact;
	}

	public String getEmail() {
		return email;
	}


	

}
