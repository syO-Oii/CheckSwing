package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.Player_HitterRank;
import com.checkSwing.model.Player_HitterStatus;
import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;
import com.checkSwing.repository.Player_HitterMapper;
import com.checkSwing.repository.Player_PitcherMapper;
import com.checkSwing.repository.Player_ProfileMapper;

@Service
public class Player_HitterService {
	@Autowired
	private Player_HitterMapper hitterMapper;
	
	@Transactional
	public List<Player_HitterStatus> getStatusById(int id) {
		return hitterMapper.selectStatusById(id);
	}	
}
