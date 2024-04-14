package com.checkSwing.admin.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.checkSwing.user.model.Profile;

@Mapper
public interface AdminProfileMapper {
	@Update("update Profile "
	 	  + "set name = #{name}, position = #{position}, "
	 	  + 	"team = #{team}, tota = #{tota} "
	 	  + "where id = #{id}")
	void setProfileUpdate(
			int id, String name, String position, String team, String tota);

}
