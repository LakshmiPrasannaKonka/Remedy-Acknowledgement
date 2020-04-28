package com.remedyack.remedyack.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.remedyack.remedyack.dao.UserRemedydao;
import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserRemedy;

@Controller
public class UserRemedyController {
	@Autowired
	  private UserRemedydao dao1;
	@Autowired
	private Userdao  userDao;
		@GetMapping(value="/userremedy")
		public String userremedy(Model model, HttpSession session) {
			String userid =(String) session.getAttribute("username");
			User user=userDao.findById(userid).get();
			
			UserRemedy userremidy = new UserRemedy();
			userremidy.setUser(user);
			userremidy.setPcNumber(user.getPcNumber());
			userremidy.setContactNumber(user.getContactNumber());
			model.addAttribute("userremedy",userremidy);
			return "UserRemedy";
		}
		@PostMapping(value="/userrem")
		public String userrem(@ModelAttribute("userremedy") UserRemedy userrem,Model model) {
			UserRemedy ur= dao1.save(userrem);
			if(ur!=null) 
			{
			model.addAttribute("message","Your details are submitted successfully.");
			return "UserRemedy";
			}
			else 
			{
				model.addAttribute("message","Something went wrong.");
				return "failure";
		
}
		}
}