package org.ares.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ares.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserMapper {
	public List<HashMap> select(int index, int pageSize) ;
	public HashMap selectrows();
	public void delete(String id);
	public List<HashMap> selectBycondition(@Param("keywords")String keywords,@Param("0")int index,@Param("1") int pageSize) ; 
	public HashMap selectrowsBycondition(@Param("keywords")String keywords);
	public void adduser(User user);
	public HashMap selectByid(@Param("id")String id);
	public void updateWithpwd(User user);
	public HashMap selectuserImf(String id);
	public HashMap selectuserId(int id);
	public void updateuserData(User user);
}
