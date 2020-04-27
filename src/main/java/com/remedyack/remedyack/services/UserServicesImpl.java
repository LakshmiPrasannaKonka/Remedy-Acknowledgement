package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

@Service
@Component
public class UserServicesImpl implements UserServices {
    @Autowired
    private Userdao dao;
    	@Override
	public int createUser(User user) {
		User u=dao.findByUserId(user.getUserId());
		if(u==null) {
			User u1=dao.save(user);
			if (u1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
	}
	@Override
	public int login(UserLogin userlogin) {
		User c=dao.findByUserId(userlogin.getUserId());
		 if(c==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}
}