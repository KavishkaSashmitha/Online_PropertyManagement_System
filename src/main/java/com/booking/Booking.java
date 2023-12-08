package com.booking;

public class Booking {
	
	private int id;
	private String location;
	private String date;
	private String property_type;
	private int contact;
	
	
	public Booking(int id, String location, String date, String property_type, int contact) {
		super();
		this.id = id;
		this.location = location;
		this.date = date;
		this.property_type = property_type;
		this.contact = contact;
	}


	public int getContact() {
		return contact;
	}


	

	public int getId() {
		return id;
	}


	public String getLocation() {
		return location;
	}


	public String getDate() {
		return date;
	}


	public String getProperty_type() {
		return property_type;
	}


	

}
