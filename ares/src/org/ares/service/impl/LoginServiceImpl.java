package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.User;
import org.ares.mapper.ILoginMapper;

import org.ares.service.ILoginServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements ILoginServise{
	@Autowired
	ILoginMapper loginMapperImpl;

	@Override
	public HashMap selectLoginnews(String username, String password) {

		HashMap map=null;
		map=loginMapperImpl.selectloginnews(username, password);
		return map;
	}

	@Override
	public HashMap selectLogincms(String h_username, String h_password) {
		HashMap map=null;
		map=loginMapperImpl.selectlogincms(h_username, h_password);
		return map;
	}

	@Override
	public int insertRecord(User user) {
		
		return loginMapperImpl.insertrecord(user);

	}

	


	
}
