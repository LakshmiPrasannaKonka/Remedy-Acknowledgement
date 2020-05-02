package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.SupportAnalystdao;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;

@Service
@Component
public class SupportAnalystServicesImpl implements SupportAnalystServices {
   @Autowired
   private SupportAnalystdao dao;
	@Override
	public int CreateSupportAnalyst(SupportAnalyst supportanalyst) {
		SupportAnalyst e=dao.findByanalystId(supportanalyst.getAnalystId());
		if(e==null) {
			SupportAnalyst sa1=dao.save(supportanalyst);
			if (sa1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
		
	}

	@Override
	public int login(SupportAnalystLogin supportanalystlogin) {
		SupportAnalyst sa=dao.findByanalystId(supportanalystlogin.getUserId());
		 if(sa==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}
	
	@Override
	public String f1id(ForgotUid f1uid) {
		SupportAnalyst sa=dao.findBycontactNumber(f1uid.getPhno());
		System.out.println(sa);
		  if(sa!=null)
		  {
			int a2= sa.getSecretquestion1().compareTo(f1uid.getQstn1());
			int a3= sa.getSecretquestion2().compareTo(f1uid.getQstn2());
			int a4= sa.getSecretquestion3().compareTo(f1uid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=sa.getAnswer1().equalsIgnoreCase(f1uid.getAns1());
				boolean a6=sa.getAnswer2().equalsIgnoreCase(f1uid.getAns2());
				boolean a7=sa.getAnswer3().equalsIgnoreCase(f1uid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					System.out.println(sa.getAnalystId());
					return sa.getAnalystId();
				}
			}
		  }
		  return null;
		}
	@Override
	public boolean f1pwd(ForgotUid f1uid) {
		SupportAnalyst sa=dao.findByanalystId(f1uid.getUid());
		  if(sa!=null)
		  {
			int a2= sa.getSecretquestion1().compareTo(f1uid.getQstn1());
			int a3= sa.getSecretquestion2().compareTo(f1uid.getQstn2());
			int a4= sa.getSecretquestion3().compareTo(f1uid.getQstn3());
			if((a2==0) && (a3==0) && (a4==0))
			{
				boolean a5=sa.getAnswer1().equalsIgnoreCase(f1uid.getAns1());
				boolean a6=sa.getAnswer2().equalsIgnoreCase(f1uid.getAns2());
				boolean a7=sa.getAnswer3().equalsIgnoreCase(f1uid.getAns3());
				if((a5==true) &&(a6==true) && (a7==true))
				{
					return true;
				}
			}
		  }
		  return false;
		}



}

