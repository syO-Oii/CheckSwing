package com.checkSwing.admin.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;

@Mapper
public interface AdminPitcherMapper {
	@Select("select count(*) from PitcherStatus")
	int count();
	
	@Select("select * from PitcherStatus where id = #{id}")
	List<PitcherStatus> selectStatusById(int id);
	
}
