package com.checkSwing.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.Player_HitterRank;
import com.checkSwing.model.Player_HitterStatus;
import com.checkSwing.model.Player_PitcherRank;
import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;
import com.checkSwing.model.User_UserInfo;
import com.checkSwing.repository.Player_HitterMapper;
import com.checkSwing.repository.Player_PitcherMapper;
import com.checkSwing.repository.Player_ProfileMapper;
import com.checkSwing.repository.Player_RankMapper;
import com.checkSwing.repository.User_UserMapper;

@Service
public class User_UserService {
	@Autowired
	private User_UserMapper userMapper;
	
	@Transactional
	public List<User_UserInfo> getAllUser() {
		return userMapper.selectAllUser();
	}
	
	@Transactional
	public List<User_UserInfo> getUserById(String id){
		return userMapper.selectUserById(id);
	}
	
	@Transactional
	public List<User_UserInfo> getUserByTeam(String team){
		return userMapper.selectUserByTeam(team);
	}
	
	@Transactional
	public List<User_UserInfo> getUserByName(String name){
		return userMapper.selectUserByName(name);
	}
	
	@Transactional
	public void setUserInfo(User_UserInfo user){
		userMapper.insertUserInfo(user);
	}
	
	@Transactional
	public User_UserInfo loginUser(String id, String password) {
		System.out.println("id : " + id + " password : " + password);
		User_UserInfo userInfo = userMapper.getUserInfo(id, password);
		if(userInfo != null) {
			return userInfo;
		} else {
			return null;
		}
	}
}
