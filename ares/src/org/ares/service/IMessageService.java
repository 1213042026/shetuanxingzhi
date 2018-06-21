package org.ares.service;

import java.util.HashMap;

import org.ares.vo.pageModel;

public interface IMessageService {
	public HashMap selectMessagerows();
	
	public pageModel<HashMap> selectnoreadmes(pageModel model)throws Exception;
	
	public HashMap selectallrows();
	
	public pageModel<HashMap> selectmes(pageModel model)throws Exception;
	
	public void deleteMesByid(String id);
	public void deleteAll(String []listmsg);
	public void insertMessage(int id, String message);
}
