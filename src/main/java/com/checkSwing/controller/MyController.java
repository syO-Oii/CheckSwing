package com.checkSwing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.checkSwing.model.HitterStatus;
import com.checkSwing.model.PitcherStatus;
import com.checkSwing.model.Profile;
import com.checkSwing.service.HitterService;
import com.checkSwing.service.PitcherService;
import com.checkSwing.service.ProfileService;

@Controller
public class MyController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private PitcherService pitcherService;

	@Autowired
	private HitterService hitterService;

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("list", profileService.getAllProfiles());
		return "index";
	}
	
	@GetMapping("/profileAll")
	public String profileAll(Model model) {
		model.addAttribute("list", profileService.getAllProfiles());
		return "profileSearchForm";
	}
	
	@GetMapping("/team")
	public String profileTeam(Model model) {
		model.addAttribute("list", profileService.getAllProfiles());
		return "profileTeamForm";
	}
	
	@GetMapping("/selectTeam")
	public String selectTeam(@RequestParam(value = "team", required = false) String team, Model model) {
		List<Profile> profileList;
		if ("all".equals(team) || team == null) {
			profileList = profileService.getAllProfiles();
		} else {
			profileList = profileService.getProfileByTeam(team);
		}

		model.addAttribute("list", profileList);
		return "profileTeamForm";
	}
	
	@GetMapping("/searchName")
	public String searchName(@RequestParam(value = "searchName", required = false) String name, Model model) {
		List<Profile> profileList = profileService.getProfileByName(name);
		model.addAttribute("list", profileList);
		return "profileSearchForm";
	}
	
	@GetMapping("/player")
	public String playerInfo(@RequestParam(value = "id", required = false) int id, 
							 @RequestParam(value = "position", required = false) String position,
							 Model model) {

		List<Profile> profileList = profileService.getProfileById(id);

		if (position.equals("P")) {
			List<PitcherStatus> pitcherStatusList = pitcherService.getStatusById(id);
			model.addAttribute("list", profileList);
			model.addAttribute("pitcher", pitcherStatusList);
			return "pitcherInfoForm";
		} else {
			List<HitterStatus> hitterStatusList = hitterService.getStatusById(id);
			model.addAttribute("list", profileList);
			model.addAttribute("hitter", hitterStatusList);
			return "hitterInfoForm";
		}
		
	}
	
	
	
	

}
