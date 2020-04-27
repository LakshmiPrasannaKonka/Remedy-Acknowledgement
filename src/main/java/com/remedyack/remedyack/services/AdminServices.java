package com.remedyack.remedyack.services;

import java.util.List;

import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.AdminLogin;
import com.remedyack.remedyack.models.SupportAnalyst;

public interface AdminServices {
	public int CreateAd(Admin admin);
	public int login(AdminLogin adminlogin);
	public List<SupportAnalyst> listsupportanalyst();
	
}
