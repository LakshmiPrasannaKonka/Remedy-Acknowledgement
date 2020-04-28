package com.remedyack.remedyack.services;

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

			
/*@Autowired

  private JdbcTemplate jdbcTemplate;

  public int addSupportAnalyst(SupportAnalyst supportanalyst){

    String sql = "INSERT INTO supportanalyst(analystId,firstname, lastname, age, gender,contactNumber,supportLevel) VALUES(?,?,?,?,?,?,?)";

    return jdbcTemplate.update(sql,supportanalyst.getAnalystId(),supportanalyst.getFirstName(),

        supportanalyst.getLastName(), supportanalyst.getAge(), supportanalyst.getGender(),supportanalyst.getContactNumber(),supportanalyst.getSupportLevel());

  }*/
  /*public List<SupportAnalyst> getAllSupportAnalyst(JdbcTemplate jdbcTemplate){
    return jdbcTemplate.query("select * from supportanalyst", new RowMapper<SupportAnalyst>(){

      public SupportAnalyst mapRow(ResultSet rs, int arg1) throws SQLException {

        SupportAnalyst s = new SupportAnalyst();
        s.setAnalystId(rs.getString("analystId"));
        s.setFirstName(rs.getString("firstname"));
        s.setLastName(rs.getString("lastname"));
        s.setAge(rs.getString("age"));
        s.setGender(rs.getString("gender"));
        s.setGender(rs.getString("contactNumber"));
        s.setGender(rs.getString("supportLevel"));
     

        return s;

      }

 

    });

  }*/

}
