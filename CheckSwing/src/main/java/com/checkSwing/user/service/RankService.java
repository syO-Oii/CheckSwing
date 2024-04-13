package com.checkSwing.user.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.user.model.HitterRank;
import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherRank;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.repository.HitterMapper;
import com.checkSwing.user.repository.PitcherMapper;
import com.checkSwing.user.repository.ProfileMapper;
import com.checkSwing.user.repository.RankMapper;

@Service
public class RankService {
	@Autowired
	private RankMapper rankMapper;
	
	@Transactional
	public List<HitterRank> getRank() {
		return rankMapper.getRank();
	}
	
	@Transactional
	public List<HitterRank> getHitterRankById(int id) {
		return rankMapper.getHitterRankById(id);
	}
	
	@Transactional
	public List<PitcherRank> getPitcherRankById(int id) {
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
