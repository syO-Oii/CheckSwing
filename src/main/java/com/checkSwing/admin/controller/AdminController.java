package com.checkSwing.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.checkSwing.admin.service.AdminProfileService;
import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.service.HitterService;
import com.checkSwing.user.service.PitcherService;
import com.checkSwing.user.service.ProfileService;

@Controller
public class AdminController {
	@Autowired
	private AdminProfileService adminProfileService;

	@Autowired
	private ProfileService profileService;

	@GetMapping("/admin")
	public String index(Model model) {
		
		return "admin/adminIndex";
	}

	@GetMapping("/admin/profile")
	public String profileUpdateForm(Model model) {
		model.addAttribute("list", profileService.getAllProfiles());
		return "admin/profileUpdateForm";
	}
	
	@GetMapping("/admin/updatePopup")
	public String profileUpdatePopUp(@RequestParam(value = "id", required = true) int id, 
									 Model model) {
		model.addAttribute("info", profileService.getProfileById(id));
		return "admin/profileUpdatePopup";
	}
	
	
	@PostMapping("/admin/setProfileUpdate")
	public String setProfileUpdate(
				@RequestParam(value = "id", required = false) Integer id,
				@RequestParam(value = "name", required = false) String name,
				@RequestParam(value = "position", required = false) String position,
				@RequestParam(value = "team", required = false) String team,
				@RequestParam(value = "tota", required = false) String tota,
			Model model) {
		adminProfileService.profileUpdate(id, name, position, team, tota);
		
		model.addAttribute("list", adminProfileService.getProfileById(id));
		
		return "redirect:/admin/updatePopup?id=" + id + "&success=true";
	}
	
	@GetMapping("/admin/status")
	public String teamUpdate(Model model) {
		return "admin/statusUpdateForm";
	}
	
	@GetMapping("/admin/board")
	public String boardUpdate(Model model) {
		return "admin/boardUpdateForm";
	}
}
