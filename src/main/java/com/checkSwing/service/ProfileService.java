package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.Profile;
import com.checkSwing.repository.ProfileMapper;

@Service
public class ProfileService {
	@Autowired
	private ProfileMapper profileMapper;
	
	@Transactional
	public List<Profile> getProfileById(int id) {
		return profileMapper.selectProfileById(id);
	}
	
	@Transactional
    public List<Profile> getProfileByTeam(String team) {
        return profileMapper.selectProfileByTeam(team);
    }
	
	@Transactional
    public List<Profile> getProfileByName(String name) {
        return profileMapper.selectProfileByName(name);
    }
	
	public List<Profile> getAllProfiles(){
		return profileMapper.selectAllProfile();
	}
	
	public List<Profile> getPitcherProfiles(){
		return profileMapper.selectPitcherProfile();
	}
	
	public List<Profile> getHitterProfiles(){
		return profileMapper.selectHitterProfile();
	}
	
//	@Transactional
//	public void addProfile(Profile profile) {
//		profileMapper.insertProfile(profile);
//	}
	
	
//	@Transactional
//	public void updateProfile(Profile profile) {
//		profileMapper.updateProfile(profile);
//	}
	
//	@Transactional
//	public void deleteProfile(Profile profile) {
//		profileMapper.deleteProfile(profile);
//	}
}
