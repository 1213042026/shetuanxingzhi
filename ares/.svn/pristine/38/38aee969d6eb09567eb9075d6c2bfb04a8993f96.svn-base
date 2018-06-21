package org.ares.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.ares.entity.Menu;
import org.ares.mapper.IEmpMapper;
import org.ares.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpServiceImpl implements IEmpService {

	@Autowired
	IEmpMapper empMapper;
	@Override
	public List select() {
		return dgList("0");
	}
	private List dgList(String id){
		List<Menu> menuList = new ArrayList<Menu>();
		//查询所有一级菜单
		List<Menu> list = empMapper.selectPart(id);
		for (Menu menu : list) {
			//查询此id的所有子菜单
//			List<Menu> sonList = empMapper.selectPart(menu.getId()+"");
			menu.setChildren(dgList(menu.getId()+""));
			menuList.add(menu);
		}
		return menuList;
	}
}
