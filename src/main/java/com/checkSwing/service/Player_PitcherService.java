package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;
import com.checkSwing.repository.Player_PitcherMapper;
import com.checkSwing.repository.Player_ProfileMapper;

@Service
public class Player_PitcherService {
	@Autowired
	private Player_PitcherMapper pitcherMapper;
	
	@Transactional
	public List<Player_PitcherStatus> getStatusById(int id) {
		return pitcherMapper.selectStatusById(id);
	}
}
