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
import com.checkSwing.repository.Player_HitterMapper;
import com.checkSwing.repository.Player_PitcherMapper;
import com.checkSwing.repository.Player_ProfileMapper;
import com.checkSwing.repository.Player_RankMapper;

@Service
public class Player_RankService {
	@Autowired
	private Player_RankMapper rankMapper;
	
	@Transactional
	public List<Player_HitterRank> getRank() {
		return rankMapper.getRank();
	}
	
	@Transactional
	public List<Player_HitterRank> getHitterRankById(int id) {
		return rankMapper.getHitterRankById(id);
	}
	
	@Transactional
	public List<Player_PitcherRank> getPitcherRankById(int id) {
		return rankMapper.getPitcherRankById(id);
	}
	
	
	@Transactional
	public int getHitterRankCount() {
		return rankMapper.countHitterRank();
	}
	
	@Transactional
	public int getPitcherRankCount() {
		return rankMapper.countPitcherRank();
	}
	
}
