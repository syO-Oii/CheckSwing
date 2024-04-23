package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;

@Mapper
public interface Admin_PitcherMapper {
	@Select("select count(*) from PitcherStatus")
	int count();
	
	@Select("select * from PitcherStatus where id = #{id}")
	List<Player_PitcherStatus> selectStatusById(int id);
	
}
