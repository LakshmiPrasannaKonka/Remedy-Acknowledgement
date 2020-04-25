package com.remedyack.remedyack.Controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.remedyack.remedyack.dao.SupportAnalystdao;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;


@Controller
public class SupportAnalystController {
	@Autowired
	private SupportAnalystdao dao;
	@GetMapping(value="/supportanalyst")
	public String supportanalyst(Model model) {
		model.addAttribute("supportanalyst",new SupportAnalyst());
		return "SupportAnalyst";
	}
	@PostMapping(value="/supportanalystreg")
	public String adminreg(@ModelAttribute("supportanalyst") SupportAnalyst adminreg,Model model) {
		adminreg.setStatus("no");
		SupportAnalyst ar= dao.save(adminreg);
		if(ar!=null) {
		model.addAttribute("message","Your details are submitted successfully.");
		return "SupportAnalyst";
		}else {
			model.addAttribute("message","Oops...Something went wrong.");
			return "failure";
		}
	}
	@GetMapping(value="/supportanalystlogin")
	public String adminlogin(Model model) {
		model.addAttribute("supportanalystlogin", new SupportAnalystLogin());
		return "SupportAnalystLogin";
	}
	@PostMapping(value="/supportanalystverify")
	public String branchloginverify(@ModelAttribute("supportanalystlogin") SupportAnalystLogin adminlogin,Model model,HttpSession session) {
		Optional<SupportAnalyst> al=dao.findById(adminlogin.getUserId());
		if(al!=null) {
			SupportAnalyst badmin=al.get();
			if(badmin.getPassword().equals(adminlogin.getPassword())&& badmin.getStatus().equalsIgnoreCase("yes") ) {
				session.setAttribute("username", badmin.getAdminId());
				return "SupportAnalystHome";
			}else if(badmin.getStatus().equalsIgnoreCase("no"))	{
				model.addAttribute("message", "Wait for admin confirmation");
				return "SupportAnalystLogin";
			}
		}
		model.addAttribute("message", "Invalid userId or password");
		return "SupportAnalystLogin";
	
		
	}
	@GetMapping("/supportanalystLogout")
	public String adminLogOut(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:/";
	}




}
