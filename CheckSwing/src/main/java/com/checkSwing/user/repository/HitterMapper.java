package com.checkSwing.user.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.user.model.HitterRank;
import com.checkSwing.user.model.HitterStatus;
import com.checkSwing.user.model.PitcherStatus;
import com.checkSwing.user.model.Profile;

@Mapper
public interface HitterMapper {
	@Select("select count(*) from HitterStatus")
	int count();
	
	@Select("select * from HitterStatus where id = #{id}")
	List<HitterStatus> selectStatusById(int id);
}