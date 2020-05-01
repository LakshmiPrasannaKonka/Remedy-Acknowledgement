package com.remedyack.remedyack.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "adminsecurity")
public class AdminSecurity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column
	private String adminId;
	@Column
	private String secretQuestion;
	@Column
	private String answer;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
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
		return "AdminSecurity [id=" + id + ", adminId=" + adminId + ", secretQuestion=" + secretQuestion + ", answer="
				+ answer + "]";
	}

}
