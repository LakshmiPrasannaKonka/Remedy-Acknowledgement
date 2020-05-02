package com.remedyack.remedyack.services;

import java.security.Security;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.Admindao;
import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.AdminLogin;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;

@Service
@Component
public class AdminServicesImpl implements AdminServices {
	@Autowired
	private Admindao dao;
	@Override
	public int CreateAd(Admin admin) {
		Admin a=dao.findByadminId(admin.getAdminId());
		if(a==null) {
			Admin a1=dao.save(admin);
			if (a1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
	}

	@Override
	public int login(AdminLogin adminlogin) {
		Admin a =dao.findByadminId(adminlogin.getUserId());
		 if(a==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }
}
	
	@Override
	public List<SupportAnalyst> listsupportanalyst() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String fid(ForgotUid fuid) {
		Admin a1=dao.findBycontactNumber(fuid.getPhno());
		  if(a1!=null)
		  {
			int a2= a1.getSecretquestion1().compareTo(fuid.getQstn1());
			int a3= a1.getSecretquestion2().compareTo(fuid.getQstn2());
			int a4= a1.getSecretquestion3().compareTo(fuid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=a1.getAnswer1().equalsIgnoreCase(fuid.getAns1());
				boolean a6=a1.getAnswer2().equalsIgnoreCase(fuid.getAns2());
				boolean a7=a1.getAnswer3().equalsIgnoreCase(fuid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					return a1.getAdminId();
				}
			}
		  }
		  return null;
		}
	
	@Override
	public boolean fpwd(ForgotUid fuid) {
		Admin a1=dao.findByadminId(fuid.getUid());
		  if(a1!=null)
		  {
			int a2= a1.getSecretquestion1().compareTo(fuid.getQstn1());
			int a3= a1.getSecretquestion2().compareTo(fuid.getQstn2());
			int a4= a1.getSecretquestion3().compareTo(fuid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=a1.getAnswer1().equalsIgnoreCase(fuid.getAns1());
				boolean a6=a1.getAnswer2().equalsIgnoreCase(fuid.getAns2());
				boolean a7=a1.getAnswer3().equalsIgnoreCase(fuid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					return true;
				}
			}
		  }
		 
		  return false;
		}
}
