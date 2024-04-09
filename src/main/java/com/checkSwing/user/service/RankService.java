package com.checkSwing.user.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.user.model.HitterRank;
import com.checkSwing.user.model.HitterStatus;
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
	public List<HitterRank> getRankById(int id) {
		return rankMapper.getRankById(id);
	}
	
	@Transactional
	public int getRankCount() {
		return rankMapper.countRank();
	}
	
	@Transactional
	public List<HitterRank> setPercil(int id){
		List<HitterRank> hitterRank = getRankById(id);
		int minAvgRank = Integer.MAX_VALUE;
		int maxAvgRank = Integer.MIN_VALUE;
		int minObpRank = Integer.MAX_VALUE;
		int maxObpRank = Integer.MIN_VALUE;
		int minSlgRank = Integer.MAX_VALUE;
		int maxSlgRank = Integer.MIN_VALUE;
		int minOpsRank = Integer.MAX_VALUE;
		int maxOpsRank = Integer.MIN_VALUE;
		int minRbiRank = Integer.MAX_VALUE;
		int maxRbiRank = Integer.MIN_VALUE;
		int minHrRank = Integer.MAX_VALUE;
		int maxHrRank = Integer.MIN_VALUE;

		for (HitterRank rank : hitterRank) {
			minAvgRank = Math.min(minAvgRank, rank.getAvgRank());
			maxAvgRank = Math.max(maxAvgRank, rank.getAvgRank());
			minObpRank = Math.min(minObpRank, rank.getObpRank());
			maxObpRank = Math.max(maxObpRank, rank.getObpRank());
			minSlgRank = Math.min(minSlgRank, rank.getSlgRank());
			maxSlgRank = Math.max(maxSlgRank, rank.getSlgRank());
			minOpsRank = Math.min(minOpsRank, rank.getOpsRank());
			maxOpsRank = Math.max(maxOpsRank, rank.getOpsRank());
			minRbiRank = Math.min(minRbiRank, rank.getRbiRank());
			maxRbiRank = Math.max(maxRbiRank, rank.getRbiRank());
			minHrRank = Math.min(minHrRank, rank.getHrRank());
			maxHrRank = Math.max(maxHrRank, rank.getHrRank());
		}

		// 각 Rank를 백분위로 변환 
		int rangeAvgRank = maxAvgRank - minAvgRank; 
		int rangeObpRank = maxObpRank - minObpRank;
		int rangeSlgRank = maxSlgRank - minSlgRank;
		int rangeOpsRank = maxOpsRank - minOpsRank;
		int rangeRbiRank = maxRbiRank - minRbiRank;
		int rangeHrRank = maxHrRank - minHrRank;

		for (HitterRank rank : hitterRank) {
			rank.setAvgPercentile((double) (rank.getAvgRank() - minAvgRank) / rangeAvgRank * 100);
			rank.setObpPercentile((double) (rank.getObpRank() - minObpRank) / rangeObpRank * 100);
			rank.setSlgPercentile((double) (rank.getSlgRank() - minSlgRank) / rangeSlgRank * 100);
			rank.setOpsPercentile((double) (rank.getOpsRank() - minOpsRank) / rangeOpsRank * 100);
			rank.setRbiPercentile((double) (rank.getRbiRank() - minRbiRank) / rangeRbiRank * 100);
			rank.setHrPercentile((double) (rank.getHrRank() - minHrRank) / rangeHrRank * 100);
		}
		
		return hitterRank;
	}
}
