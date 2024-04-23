package com.checkSwing.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.checkSwing.model.Player_Profile;
import com.checkSwing.model.User_UserInfo;

import lombok.NonNull;

@Mapper
public interface User_UserMapper {
	@Select("select count(*) from UserInfo")
	int count();
	
	@Select("select * from UserInfo where id = #{id}")
	List<User_UserInfo> selectUserById(String id);
	
	@Select("select * from UserInfo order by name")
    List<User_UserInfo> selectAllUser();
	
	@Select("insert into UserInfo (id, password, name, team, birth, phoneNumber) "
					   + "values (#{num}, #{id}, #{password}, #{name}, #{team}, #{birth}, #{phoneNumber})")
    void insertUserInfo(User_UserInfo user);
	
	@Select("select * from UserInfo where team = #{team} order by name")
    List<User_UserInfo> selectUserByTeam(String team);
	
	@Select("select * from UserInfo where name like concat('%', #{name}, '%') order by team, id")
    List<User_UserInfo> selectUserByName(String Name);
    

    
    @Select("select * from UserInfo where id = #{id} and password = #{password}")
    User_UserInfo getUserInfo(String id, String password);
	
}