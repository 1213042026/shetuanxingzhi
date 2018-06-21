package org.ares.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ares.entity.Txt;
import org.ares.vo.pageModel;

public interface ITxtServise {
	public pageModel<HashMap> selectTxt(pageModel model)throws Exception;
	
	public pageModel<HashMap> selectBycondition(String keywords,pageModel model)throws Exception;
	
	public pageModel<HashMap> selectBypart(String partname,pageModel model)throws Exception;
	
	
	public void deleteTxtByid(String id);
	public  HashMap selectTxtxq(String id);
	public void inserttxt(Txt txt);
	public List<HashMap> selectTxt_part_name();
	public HashMap auditingTxt(String id);
	public void auditA(String id);
	public void auditB(String id);
	public void deleteAll(String []listval);
	
	public List<HashMap> selectToptennews();
	public List<HashMap> selectToptenwait();
	public List<HashMap> selectTop8();
	public HashMap selectLogTime();
	
	public pageModel<HashMap> selectwait(pageModel model)throws Exception;
}
