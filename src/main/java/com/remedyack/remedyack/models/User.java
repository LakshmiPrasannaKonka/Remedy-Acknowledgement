package com.remedyack.remedyack.models;

import javax.persistence.Entity;
import javax.annotation.Generated;
import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
	@Id
	@Generated("assigned")
	@Column
	private String userId;
	@Column
	private String password;
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String designation;
	@Column
	private int seatNo;
	@Column
	private String PcNumber;
    @Column
	private String IpAddress;
	@Column
	private String contactNumber;
	@Column
	private String secretQuestion;
	@Column
	private String answer;

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public int getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	public String getPcNumber() {
		return PcNumber;
	}

	public void setPcNo(String pcNumber) {
		PcNumber = pcNumber;
	}

	public String getIpAddress() {
		return IpAddress;
	}

	public void setIpAddress(String ipAddress) {
		IpAddress = ipAddress;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserId() {
		return userId;
	}

	public void setCUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
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
		return "User [userId=" + userId + ", password=" + password + ", firstName=" + firstName + ", lastName="
				+ lastName + ", designation=" + designation + ", seatNo=" + seatNo + ", PcNumber=" + PcNumber + ", IpAddress="
				+ IpAddress + ", contactNumber=" + contactNumber + ", secretQuestion=" + secretQuestion + ", answer="
				+ answer + "]";
	}

	
	}

