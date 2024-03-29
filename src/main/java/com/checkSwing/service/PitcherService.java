package com.checkSwing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.model.PitcherStatus;
import com.checkSwing.model.Profile;
import com.checkSwing.repository.PitcherMapper;
import com.checkSwing.repository.ProfileMapper;

@Service
public class PitcherService {
	@Autowired
	private PitcherMapper pitcherMapper;
	
	@Transactional
	public List<PitcherStatus> getStatusById(int id) {
		return pitcherMapper.selectStatusById(id);
	}
}
