package com.checkSwing.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.checkSwing.user.model.HitterRank;
import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherRank;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.service.HitterService;
import com.checkSwing.user.service.PitcherService;
import com.checkSwing.user.service.ProfileService;
import com.checkSwing.user.service.RankService;

@Controller
public class UserController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private PitcherService pitcherService;

	@Autowired
	private HitterService hitterService;
	
	@Autowired
	private RankService rankService;

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
	
	@GetMapping("/pitcherInfo")
	public String profilePitcher(Model model) {
		model.addAttribute("list", profileService.getPitcherProfiles());
		return "profileTeamForm";
	}
	
	@GetMapping("/hitterInfo")
	public String profileHitter(Model model) {
		model.addAttribute("list", profileService.getHitterProfiles());
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
							 @RequestParam(value = "team", required = false) String team,
							 Model model) {

		List<Profile> profileList = profileService.getProfileById(id);

		if (position.equals("P")) {
			List<PitcherStatus> pitcherStatusList = pitcherService.getStatusById(id);
			List<PitcherRank> pitcherRank = rankService.getPitcherRankById(id);
			int rankCount = rankService.getPitcherRankCount();
			
			for (PitcherRank rank : pitcherRank) {
				rank.setBbPercentile(100 - ((double)rank.getBbRank() / rankCount * 100));
				rank.setSoPercentile(100 - ((double)rank.getSoRank() / rankCount * 100));
				rank.setEraPercentile(100 - ((double)rank.getEraRank() / rankCount * 100));
			}
			
			model.addAttribute("list", profileList);
			model.addAttribute("pitcher", pitcherStatusList);
			model.addAttribute("rank", pitcherRank);
			return "pitcherInfoForm";
		} else {
			List<HitterStatus> hitterStatusList = hitterService.getStatusById(id);
			List<HitterRank> hitterRank = rankService.getHitterRankById(id);
			int rankCount = rankService.getHitterRankCount();
			
			// 각 스탯 별 백분위 추출작업
			for (HitterRank rank : hitterRank) {
				rank.setAvgPercentile(100 - ((double)rank.getAvgRank() / rankCount * 100));
				rank.setObpPercentile(100 - ((double)rank.getObpRank() / rankCount * 100));
				rank.setSlgPercentile(100 - ((double)rank.getSlgRank() / rankCount * 100));
				rank.setOpsPercentile(100 - ((double)rank.getOpsRank() / rankCount * 100));
				rank.setRbiPercentile(100 - ((double)rank.getRbiRank() / rankCount * 100));
				rank.setHrPercentile(100 - ((double)rank.getHrRank() / rankCount * 100));
			}
			
			model.addAttribute("list", profileList);
			model.addAttribute("hitter", hitterStatusList);
			model.addAttribute("rank", hitterRank);
			
			return "hitterInfoForm2";
		}
		
	}
	
	
	
	

}
