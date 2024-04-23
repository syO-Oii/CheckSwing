package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.Player_Profile;

@Mapper
public interface Player_ProfileMapper {
	@Select("select count(*) from Profile")
	int count();
	
	@Select("select * from Profile where id = #{id}")
	List<Player_Profile> selectProfileById(int id);
	
	@Select("select * from Profile order by name")
    List<Player_Profile> selectAllProfile();
	
	@Select("insert into Profile (id, name, team, birth, position, tota) "
					   + "values ( #{id}, #{name}, #{team}, #{birth}, #{position}, #{tota})")
    void insertProfile(Player_Profile profile);
	
	@Select("select * from Profile where team = #{team} order by id")
    List<Player_Profile> selectProfileByTeam(String team);
	
	@Select("select * from Profile where name like concat('%', #{name}, '%') order by team, id")
    List<Player_Profile> selectProfileByName(String Name);
	
	@Select("select * from Profile where position = 'P' order by name")
	List<Player_Profile> selectPitcherProfile();
	
	@Select("select * from Profile where position != 'P' order by name")
	List<Player_Profile> selectHitterProfile();

}
