package com.checkSwing.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;
import com.checkSwing.user.repository.HitterMapper;
import com.checkSwing.user.repository.PitcherMapper;
import com.checkSwing.user.repository.ProfileMapper;

@Service
public class AdminHitterService {
	@Autowired
	private HitterMapper hitterMapper;
	
	@Transactional
	public List<HitterStatus> getStatusById(int id) {
		return hitterMapper.selectStatusById(id);
	}
}
