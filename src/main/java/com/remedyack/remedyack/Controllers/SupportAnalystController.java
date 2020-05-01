package com.remedyack.remedyack.Controllers;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.remedyack.remedyack.dao.SupportAnalystdao;
import com.remedyack.remedyack.dao.UserRemedydao;
import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;
import com.remedyack.remedyack.models.UserRemedy;
import com.remedyack.remedyack.services.AdminServices;
import com.remedyack.remedyack.services.SupportAnalystServices;

@Controller
public class SupportAnalystController {
	@Autowired
	private SupportAnalystdao dao;
    @Autowired
	private SupportAnalystServices supportanalystservice;	    
	@Autowired
	private UserRemedydao urdao;
	@GetMapping(value = "/supportanalyst")
	public String supportanalyst(Model model) {
		model.addAttribute("supportanalyst", new SupportAnalyst());
		return "SupportAnalyst";
	}

	@PostMapping(value = "/supportanalystreg")
	public String adminreg(@ModelAttribute("supportanalyst") SupportAnalyst adminreg, Model model) {
		adminreg.setStatus("no");
		SupportAnalyst ar = dao.save(adminreg);
		if (ar != null) {
			model.addAttribute("message", "Your details are submitted successfully.");
			return "SupportAnalyst";
		} else {
			model.addAttribute("message", "Oops...Something went wrong.");
			return "failure";
		}
	}

	@GetMapping(value = "/supportanalystlogin")
	public String adminlogin(Model model) {
		model.addAttribute("supportanalystlogin", new SupportAnalystLogin());
		return "SupportAnalystLogin";
	}

	@PostMapping(value = "/supportanalystverify")
	public String branchloginverify(@ModelAttribute("supportanalystlogin") SupportAnalystLogin adminlogin, Model model,
			HttpSession session) {
		Optional<SupportAnalyst> al = dao.findById(adminlogin.getUserId());
		if (al != null) {
			SupportAnalyst badmin = al.get();
			if (badmin.getPassword().equals(adminlogin.getPassword()) && badmin.getStatus().equalsIgnoreCase("yes")) {
				session.setAttribute("username", badmin.getAnalystId());
				return "SupportAnalystHome";
			} else if (badmin.getStatus().equalsIgnoreCase("no")) {
				model.addAttribute("message", "Wait for admin confirmation");
				return "SupportAnalystLogin";
			}
		}
		model.addAttribute("message", "Invalid userId or password");
		return "SupportAnalystLogin";
	}
	@GetMapping(value="/supportanalystlogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/Aforgotuid")
	public String fid(Model model){
		model.addAttribute("name",new ForgotUid());
		return "forgotid1";
	}
	@PostMapping("/Aforgotuid2")
	public String fid1(@ModelAttribute("name") ForgotUid fid,Model model)
	{
		String b=supportanalystservice.f1id(fid);
		if(b!=null)
		{
	  	model.addAttribute("message",b+" is your id");
		}
		else
		{
			model.addAttribute("message", "Incorrect credentials");
		}
		return "forgotid1";
	}
	@GetMapping("/Aforgotpswd")
	public String fpwd(Model model){
		model.addAttribute("name1",new ForgotUid());
		return "forgotpwd1";
	}
	@PostMapping("/Aforgotpwd1")
	public String fpwd1(@ModelAttribute("name1") ForgotUid fid,Model model)
	{
		boolean b=supportanalystservice.f1pwd(fid);
		if(b==true)
		{
	  	  return "resetPwd1";
		}
		else
		{
			model.addAttribute("message", "Incorrect credentials");
			return "resetPwd1";
		}
	}
	@PostMapping("/Aupdatepwd")
	public String updatePassword(@ModelAttribute("name1") ForgotUid forgetUID,Model model)
	{
SupportAnalyst sa =dao.findByanalystId(forgetUID.getUid());
System.out.println(sa);
		sa.setPassword(forgetUID.getPwd());
		dao.save(sa);
		model.addAttribute("message","your password has been updated");
		return "resetPwd1";
	}
	@GetMapping("/supportanalystLogout")
	public String supportanalystLogOut(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping(value="/assignedtoanalyst")
	public String remedyinfo(Model model) {
		List<UserRemedy> list=(List<UserRemedy>) urdao.findAll();

		model.addAttribute("list",list);
		return "RemedyInformation";
	}
	

}
