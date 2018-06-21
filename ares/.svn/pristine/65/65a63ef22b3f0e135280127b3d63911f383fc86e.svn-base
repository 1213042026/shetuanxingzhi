package org.ares.mapper;

import java.util.HashMap;
import org.apache.ibatis.annotations.Param;
import org.ares.entity.User;
import org.springframework.stereotype.Repository;
@Repository
public interface ILoginMapper {
	public HashMap selectloginnews(@Param("username")String username,@Param("password")String password) ;
	public HashMap selectlogincms(@Param("h_username")String h_username,@Param("h_password")String h_password) ;
	public int insertrecord(User user);
}
