package com.checkSwing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.checkSwing.model.Player_HitterRank;
import com.checkSwing.model.Player_HitterStatus;
import com.checkSwing.model.Player_PitcherRank;
import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;
import com.checkSwing.model.User_UserInfo;
import com.checkSwing.service.Player_HitterService;
import com.checkSwing.service.Player_PitcherService;
import com.checkSwing.service.Player_ProfileService;
import com.checkSwing.service.Player_RankService;
import com.checkSwing.service.User_UserService;

@Controller
public class UserController {

	@Autowired
	private User_UserService userService;

	@GetMapping("/login")
	public String login(Model model) {
		return "login/loginForm";
	}
	
	@PostMapping("/checkLogin")
	public String checkLogin(
			Model model,
			HttpServletRequest request,
			@RequestParam(value = "id", required = false) String id,
			@RequestParam(value = "password", required = false) String password) {
		
		User_UserInfo user = userService.loginUser(id, password);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "index";
		} else {
			return "redirect:";
		} 
		
		
		
	}
}
