package model;

public class StudentModel {
	private int studentID;
	private String name;
	private String address;
	private String gender;
	
	
	
	public StudentModel(int studentID, String name, String address, String gender) {
		super();
		this.studentID = studentID;
		this.name = name;
		this.address = address;
		this.gender = gender;
	}
	public int getStudentID() {
		return studentID;
	}
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
