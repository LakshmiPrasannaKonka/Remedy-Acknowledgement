package com.remedyack.remedyack.services;

import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

public interface UserServices {
	public int createUser(User user);
	public int login(UserLogin userlogin);
}
