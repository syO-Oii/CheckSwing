package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.Player_Profile;
import com.checkSwing.repository.Player_ProfileMapper;

@Service
public class Player_ProfileService {
	@Autowired
	private Player_ProfileMapper profileMapper;
	
	@Transactional
	public List<Player_Profile> getProfileById(int id) {
		return profileMapper.selectProfileById(id);
	}
	
	@Transactional
    public List<Player_Profile> getProfileByTeam(String team) {
        return profileMapper.selectProfileByTeam(team);
    }
	
	@Transactional
    public List<Player_Profile> getProfileByName(String name) {
        return profileMapper.selectProfileByName(name);
    }
	
	public List<Player_Profile> getAllProfiles(){
		return profileMapper.selectAllProfile();
	}
	
	public List<Player_Profile> getPitcherProfiles(){
		return profileMapper.selectPitcherProfile();
	}
	
	public List<Player_Profile> getHitterProfiles(){
		return profileMapper.selectHitterProfile();
	}
	
	
	
}
