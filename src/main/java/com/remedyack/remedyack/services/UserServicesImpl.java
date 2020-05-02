package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

@Service
@Component
public class UserServicesImpl implements UserServices {
    @Autowired
    private Userdao dao;
    	@Override
	public int createUser(User user) {
		User u=dao.findById(user.getId()).get();
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
		User c=dao.findById(userlogin.getUserId()).get();
		 if(c==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}
	@Override
	public String f2id(ForgotUid f2uid) {
		User us=dao.findBycontactNumber(f2uid.getPhno());
		  if(us!=null)
		  {
			int a2= us.getSecretquestion1().compareTo(f2uid.getQstn1());
			int a3= us.getSecretquestion2().compareTo(f2uid.getQstn2());
			int a4= us.getSecretquestion3().compareTo(f2uid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=us.getAnswer1().equalsIgnoreCase(f2uid.getAns1());
				boolean a6=us.getAnswer2().equalsIgnoreCase(f2uid.getAns2());
				boolean a7=us.getAnswer3().equalsIgnoreCase(f2uid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					return us.getId();
				}
			}
		  }
		  return null;
		}
	@Override
	public boolean f2pwd(ForgotUid f2uid) {
		User us=dao.findByid(f2uid.getUid());
		  if(us!=null)
		  {
			int a2= us.getSecretquestion1().compareTo(f2uid.getQstn1());
			int a3= us.getSecretquestion2().compareTo(f2uid.getQstn2());
			int a4= us.getSecretquestion3().compareTo(f2uid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=us.getAnswer1().equalsIgnoreCase(f2uid.getAns1());
				boolean a6=us.getAnswer2().equalsIgnoreCase(f2uid.getAns2());
				boolean a7=us.getAnswer3().equalsIgnoreCase(f2uid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					return true;
				}
			}
		  }
		  return false;
		}



}
