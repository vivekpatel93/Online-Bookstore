package com.entity;

public class User {
	private int User_id;
	private String UserName;
	private String CompleteName;
	private String ContactNumber;
	private String Email;
	private String Password;
	private String Address;
	private String Landmark;
	private String City;
	private String State;
	private int PinCode;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getCompleteName() {
		return CompleteName;
	}
	public void setCompleteName(String completeName) {
		CompleteName = completeName;
	}
	public String getContactNumber() {
		return ContactNumber;
	}
	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getLandmark() {
		return Landmark;
	}
	public void setLandmark(String landmark) {
		Landmark = landmark;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public int getPinCode() {
		return PinCode;
	}
	public void setPinCode(int pinCode) {
		PinCode = pinCode;
	}
	@Override
	public String toString() {
		return "User [User_id=" + User_id + ", UserName=" + UserName + ", CompleteName=" + CompleteName
				+ ", ContactNumber=" + ContactNumber + ", Email=" + Email + ", Password=" + Password + ", Address="
				+ Address + ", Landmark=" + Landmark + ", City=" + City + ", State=" + State + ", PinCode=" + PinCode
				+ "]";
	}
	
}
