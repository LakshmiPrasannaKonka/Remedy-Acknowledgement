package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.SupportAnalystdao;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;

@Service
@Component
public class SupportAnalystServicesImpl implements SupportAnalystServices {
   @Autowired
   private SupportAnalystdao dao;
	@Override
	public int CreateSupportAnalyst(SupportAnalyst supportanalyst) {
		SupportAnalyst e=dao.findByAnalystId(supportanalyst.getAnalystId());
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
		SupportAnalyst sa=dao.findByAnalystId(supportanalystlogin.getUserId());
		 if(sa==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}

}
