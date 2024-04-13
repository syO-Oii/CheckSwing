package com.checkSwing.admin.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.user.model.Profile;

@Mapper
public interface AdminProfileMapper {
	@Select("select count(*) from Profile")
	int count();
	
	@Select("select * from Profile where id = #{id}")
	List<Profile> selectProfileById(int id);
	
	@Select("select * from Profile")
    List<Profile> selectAllProfile();
	
	@Select("insert into Profile (id, name, team, birth, position, tota) "
					   + "values ( #{id}, #{name}, #{team}, #{birth}, #{position}, #{tota})")
    void insertProfile(Profile profile);
	
	@Select("select * from Profile where team = #{team} order by id")
    List<Profile> selectProfileByTeam(String team);
	
	@Select("select * from Profile where name like concat('%', #{name}, '%') order by team, id")
    List<Profile> selectProfileByName(String Name);
	
	@Select("select * from Profile where position = 'P'")
	List<Profile> selectPitcherProfile();
	
	@Select("select * from Profile where position != 'P'")
	List<Profile> selectHitterProfile();

}
