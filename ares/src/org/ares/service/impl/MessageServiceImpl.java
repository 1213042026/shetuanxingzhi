package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.mapper.IMessageMapper;
import org.ares.service.IMessageService;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class MessageServiceImpl implements IMessageService {
	@Autowired
	IMessageMapper messageMapper;
	
	
	@Override
	public HashMap selectMessagerows() {
		HashMap map=messageMapper.selectrows();
		return map;
	}


	@Override
	public pageModel<HashMap> selectnoreadmes(pageModel model) throws Exception {
		HashMap map1=messageMapper.selectrows();
		List list=messageMapper.selectnoread(model.getBeginIndex(), model.getPageSize());
		model.setList(list);
		String rows=map1.get("messagerows").toString();
		model.setRows(rows);
		messageMapper.upnoreadrows();
		return model;
	}


	@Override
	public HashMap selectallrows() {
		HashMap map=messageMapper.selectallrows();
		return map;
	}

	@Override
	public pageModel<HashMap> selectmes(pageModel model) throws Exception {
		HashMap map1=messageMapper.selectallrows();
		List list=messageMapper.selectall(model.getBeginIndex(), model.getPageSize());
		model.setList(list);
		String rows=map1.get("allrows").toString();
		model.setRows(rows);
		return model;
	}


	@Override
	public void deleteMesByid(String id) {
		messageMapper.delete(id);
		
	}


	@Override
	public void deleteAll(String[] listmsg) {
		for(String a:listmsg){
			messageMapper.delete(a);
		}
		
		
	}


	@Override
	public void insertMessage(int id, String message) {
		// TODO Auto-generated method stub
		messageMapper.insertmessage(id,message);
	}






}
