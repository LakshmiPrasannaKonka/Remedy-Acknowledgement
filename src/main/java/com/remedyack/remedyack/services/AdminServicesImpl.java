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
import com.remedyack.remedyack.models.SupportAnalyst;

@Service
@Component
public class AdminServicesImpl implements AdminServices {
	@Autowired
	private Admindao dao;
	@Override
	public int CreateAd(Admin admin) {
		Admin a=dao.findByAdminId(admin.getAdminId());
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
		Admin a =dao.findByAdminId(adminlogin.getUserId());
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

}