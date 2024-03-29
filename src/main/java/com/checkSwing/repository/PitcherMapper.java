package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.PitcherStatus;
import com.checkSwing.model.Profile;

@Mapper
public interface PitcherMapper {
	@Select("select count(*) from PitcherStatus")
	int count();
	
	@Select("select * from PitcherStatus where id = #{id}")
	List<PitcherStatus> selectStatusById(int id);
	
}
