package com.skilldistillery.jpadrills.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Transient;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	private String email;
	private String password;
	private char classification;
	private char division;   // these will probably need to be enums in the future
	@Transient 
	List<DrillData> data;
	
	public User() { }
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public char getClassification() {
		return classification;
	}
	public void setClassification(char classification) {
		this.classification = classification;
	}
	public char getDivision() {
		return division;
	}
	public void setDivision(char division) {
		this.division = division;
	}

	
	public List<DrillData> getData() {
		return data;
	}

	public void setData(List<DrillData> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", classification=" + classification + ", division=" + division + "]";
	}


}

