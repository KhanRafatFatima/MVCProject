package entity;

import java.util.Date;

public class Employee {  
private int id;  
private String name;  
private String gender;
private Date dateOfBirth;
private String address;
private String city;
private String state;
private String loginID;
private String password;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Date getDateOfBirth() {
	return dateOfBirth;
}
public void setDateOfBirth(Date dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getLoginID() {
	return loginID;
}
public void setLoginID(String loginID) {
	this.loginID = loginID;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
} 
  
}  
