package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.HitterStatus;
import com.checkSwing.model.PitcherStatus;
import com.checkSwing.model.Profile;

@Mapper
public interface HitterMapper {
	@Select("select count(*) from HitterStatus")
	int count();
	
	@Select("select * from HitterStatus where id = #{id}")
	List<HitterStatus> selectStatusById(int id);
	
}
