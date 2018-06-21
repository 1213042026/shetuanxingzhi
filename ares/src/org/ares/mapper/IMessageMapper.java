package org.ares.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface IMessageMapper {
	public HashMap selectrows();
	
	public List<HashMap> selectnoread(int index, int pageSize) ;
	
	public void upnoreadrows();
	
	public HashMap selectallrows();
	
	public List<HashMap> selectall(int index, int pageSize) ;
	
	public void delete(String id) ;

	public void insertmessage(@Param("id") int id,@Param("message") String message);

}
