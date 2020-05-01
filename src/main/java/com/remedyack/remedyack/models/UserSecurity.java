package com.remedyack.remedyack.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usersecurity")
public class UserSecurity
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column
    private String userId;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
		return "UserSecurity [id=" + id + ", userId=" + userId + ", secretQuestion="
				+ secretQuestion + ", answer=" + answer + "]";
	}
	
	
}
