package com.remedyack.remedyack.models;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@Generated("assigned")
	@Column
	private String adminId;
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String age; 
	@Column
	private String gender; 
	@Column
	private String contactNumber; 
	@Column
	private String password;
	@Column
	private String secretQuestion;
	@Column
	private String answer;
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactnumber) {
		this.contactNumber = contactnumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSecretQuestion() {
		return secretQuestion;
	}
	public void setSecretQuestion(String secretQuestion) {
		this.secretQuestion = secretQuestion;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "AdminReg [AdminId=" + adminId + ", FirstName=" + firstName + ", LastName=" + lastName + ", Age=" + age
				+ ", Gender=" + gender + ", ContactNumber=" + contactNumber + ", Password=" + password
				+ ", SecretQuestion=" + secretQuestion + ", Answer=" + answer + "]";
	}
		
}

