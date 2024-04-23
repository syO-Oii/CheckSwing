package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.Player_HitterRank;
import com.checkSwing.model.Player_HitterStatus;
import com.checkSwing.model.Player_PitcherStatus;
import com.checkSwing.model.Player_Profile;

@Mapper
public interface Player_HitterMapper {
	@Select("select count(*) from HitterStatus")
	int count();
	
	@Select("select * from HitterStatus where id = #{id}")
	List<Player_HitterStatus> selectStatusById(int id);
}
