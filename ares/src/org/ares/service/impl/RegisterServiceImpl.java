package org.ares.service.impl;

import java.util.HashMap;

import org.apache.tomcat.util.http.mapper.Mapper;
import org.ares.entity.Register;
import org.ares.mapper.IRegisterMapper;
import org.ares.service.IRegisterServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements IRegisterServise {
	@Autowired
	IRegisterMapper mapper;

	@Override
	public void insertRegister(Register register) {
		// TODO Auto-generated method stub
	
		System.out.println(register.getCms_user_uname());
		mapper.insertRegister(register);
	}

	@Override
	public HashMap selectRegister(String username) {
		HashMap map=null;
		map=mapper.selectRegister(username);
		return map;
	}
	
}
