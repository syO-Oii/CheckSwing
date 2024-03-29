package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.HitterStatus;
import com.checkSwing.model.PitcherStatus;
import com.checkSwing.model.Profile;
import com.checkSwing.repository.HitterMapper;
import com.checkSwing.repository.PitcherMapper;
import com.checkSwing.repository.ProfileMapper;

@Service
public class HitterService {
	@Autowired
	private HitterMapper hitterMapper;
	
	@Transactional
	public List<HitterStatus> getStatusById(int id) {
		return hitterMapper.selectStatusById(id);
	}
}
