package com.checkSwing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.checkSwing.service.Player_HitterService;
import com.checkSwing.service.Player_PitcherService;
import com.checkSwing.service.Player_ProfileService;
import com.checkSwing.service.Player_RankService;

@Controller
public class PlayerController {

	@Autowired
	private Player_ProfileService profileService;
	
	@Autowired
	private Player_PitcherService pitcherService;

	@Autowired
	private Player_HitterService hitterService;
	
	@Autowired
	private Player_RankService rankService;

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("list", profileService.getAllProfiles());
		return "index";
	}
	
	
	@GetMapping("/search")
	public String profileTeam(@RequestParam(defaultValue = "1") int page, Model model, HttpServletRequest request) {
		int pageSize = 10;
		List<Player_Profile> allProfiles = profileService.getAllProfiles();
	    
	    // 현재 페이지에 해당하는 항목들을 추출
	    List<Player_Profile> pagedList = getPagedList(allProfiles, page, pageSize);
	    
	    // 총 페이지 수 계산
	    int totalPages = (int) Math.ceil((double) allProfiles.size() / pageSize);
	    
	    // 현재 요청된 URL 가져오기
	    String currentUrl = request.getRequestURI();
	    // 컨텍스트 경로 가져오기
	    String contextPath = request.getContextPath();
	    
	    // 컨텍스트 경로 이후의 경로를 추출하여 현재 페이지의 요청 매핑 경로 생성
	    String currentMappingPath = currentUrl.substring(contextPath.length());
	    
	    model.addAttribute("list", pagedList);
	    model.addAttribute("totalPages", totalPages);				  // 총 페이지 계산
	    model.addAttribute("currentMappingPath", currentMappingPath); // 모델에 현재 페이지의 매핑 경로 추가
		return "searchProfileForm";
	}
	
	private List<Player_Profile> getPagedList(List<Player_Profile> allProfiles, int page, int pageSize) {
	    int fromIndex = (page - 1) * pageSize;
	    int toIndex = Math.min(fromIndex + pageSize, allProfiles.size());
	    return allProfiles.subList(fromIndex, toIndex);
	}
	
	@GetMapping("/pitcherInfo")
	public String profilePitcher(@RequestParam(defaultValue = "1") int page, Model model, HttpServletRequest request) {
		int pageSize = 10;
		List<Player_Profile> pitcherProfiles = profileService.getPitcherProfiles();
	    List<Player_Profile> pagedList = getPagedList(pitcherProfiles, page, pageSize);
	    int totalPages = (int) Math.ceil((double) pitcherProfiles.size() / pageSize);
	
	    String currentUrl = request.getRequestURI();
	    String contextPath = request.getContextPath();
	    String currentMappingPath = currentUrl.substring(contextPath.length());
	    
		model.addAttribute("list", pagedList);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentMappingPath", currentMappingPath); // 모델에 현재 페이지의 매핑 경로 추가
		return "searchProfileForm";
	}
	
	@GetMapping("/hitterInfo")
	public String profileHitter(@RequestParam(defaultValue = "1") int page, Model model, HttpServletRequest request) {
		int pageSize = 10;
		List<Player_Profile> hitterProfiles = profileService.getHitterProfiles();
	    List<Player_Profile> pagedList = getPagedList(hitterProfiles, page, pageSize);
	    int totalPages = (int) Math.ceil((double) hitterProfiles.size() / pageSize);
	    
	    String currentUrl = request.getRequestURI();
	    String contextPath = request.getContextPath();
	    String currentMappingPath = currentUrl.substring(contextPath.length());
	
		model.addAttribute("list", pagedList);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentMappingPath", currentMappingPath);
		return "searchProfileForm";
	}
	
	@GetMapping("/selectTeam")
	public String selectTeam(@RequestParam(defaultValue = "1") int page, @RequestParam(value = "team", required = false) String team, Model model, HttpServletRequest request) {
		int pageSize = 10;
		List<Player_Profile> profileList;
		
		if ("all".equals(team) || team == null) {
			profileList = profileService.getAllProfiles();
		} else {
			profileList = profileService.getProfileByTeam(team);
		}
		
		List<Player_Profile> pagedList = getPagedList(profileList, page, pageSize);
		int totalPages = (int) Math.ceil((double) profileList.size() / pageSize);
		
		String currentUrl = request.getRequestURI();
	    String contextPath = request.getContextPath();
	    String currentMappingPath = currentUrl.substring(contextPath.length());
	    System.out.println(contextPath);
		
	    System.out.println(currentMappingPath);
		
				
		model.addAttribute("list", pagedList);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentMappingPath", currentMappingPath);
		model.addAttribute("team", team);
		return "searchProfileForm";
	}
	
	@GetMapping("/searchName")
	public String searchName(@RequestParam(value = "searchName", required = false) String name, Model model) {
		List<Player_Profile> profileList = profileService.getProfileByName(name);
		model.addAttribute("list", profileList);
		return "profileSearchForm";
	}
	
	@GetMapping("/player")
	public String playerInfo(@RequestParam(value = "id", required = false) int id, 
							 @RequestParam(value = "position", required = false) String position,
							 @RequestParam(value = "team", required = false) String team,
							 Model model) {

		List<Player_Profile> profileList = profileService.getProfileById(id);

		if (position.equals("P")) {
			List<Player_PitcherStatus> pitcherStatusList = pitcherService.getStatusById(id);
			List<Player_PitcherRank> pitcherRank = rankService.getPitcherRankById(id);
			int rankCount = rankService.getPitcherRankCount();
			
			for (Player_PitcherRank rank : pitcherRank) {
				rank.setBbPercentile(100 - ((double)rank.getBbRank() / rankCount * 100));
				rank.setSoPercentile(100 - ((double)rank.getSoRank() / rankCount * 100));
				rank.setEraPercentile(100 - ((double)rank.getEraRank() / rankCount * 100));
			}
			
			model.addAttribute("list", profileList);
			model.addAttribute("pitcher", pitcherStatusList);
			model.addAttribute("rank", pitcherRank);
			return "pitcherInfoForm";
		} else {
			List<Player_HitterStatus> hitterStatusList = hitterService.getStatusById(id);
			List<Player_HitterRank> hitterRank = rankService.getHitterRankById(id);
			int rankCount = rankService.getHitterRankCount();
			
			// 각 스탯 별 백분위 추출작업
			for (Player_HitterRank rank : hitterRank) {
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
			
			return "hitterInfoForm";
		}
		
	}
	
	
	
	

}
