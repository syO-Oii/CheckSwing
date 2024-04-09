package com.checkSwing.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.service.HitterService;
import com.checkSwing.user.service.PitcherService;
import com.checkSwing.user.service.ProfileService;

@Controller
public class AdminController {

	@GetMapping("/admin")
	public String index(Model model) {
		return "admin/adminIndex";
	}
	
	@GetMapping("/admin/profile")
	public String profileUpdate(Model model) {
		return "admin/profileUpdateForm";
	}
	
	@GetMapping("/admin/team")
	public String teamUpdate(Model model) {
		return "admin/teamUpdateForm";
	}
	
	@GetMapping("/admin/board")
	public String boardUpdate(Model model) {
		return "admin/boardUpdateForm";
	}
}