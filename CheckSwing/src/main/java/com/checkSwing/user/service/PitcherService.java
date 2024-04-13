package com.checkSwing.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.repository.PitcherMapper;
import com.checkSwing.user.repository.ProfileMapper;

@Service
public class PitcherService {
	@Autowired
	private PitcherMapper pitcherMapper;
	
	@Transactional
	public List<PitcherStatus> getStatusById(int id) {
		return pitcherMapper.selectStatusById(id);
	}
}
