package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.User;
import org.ares.mapper.IUserMapper;
import org.ares.service.IUserService;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	IUserMapper mapper;
	
	
	/**
	 * 查询全部用户
	 */
	@Override
	public pageModel<HashMap> selectUser(pageModel model) throws Exception {
		// TODO Auto-generated method stub
		List map=null;
		HashMap rmap=null;
		String rows=null;
		map= mapper.select(model.getBeginIndex(),model.getPageSize());
		rmap= mapper.selectrows();
		rows=rmap.get("rows").toString();
		model.setList(map);
		model.setRows(rows);
		return model;
	}

	
	/**
	 * 单个用户删除
	 */
	@Override
	public void deleteUserByid(String id) {
		// TODO Auto-generated method stub
		mapper.delete(id);
	}


	/**
	 * 模糊查询用户
	 */
	@Override
	public pageModel<HashMap> selectBycondition(String keywords, pageModel model) throws Exception {
		// TODO Auto-generated method stub
		List<HashMap> map=null;
		HashMap rmap=null;
		String rows=null;
		map= mapper.selectBycondition(keywords,model.getBeginIndex(),model.getPageSize());
		rmap=mapper.selectrowsBycondition(keywords);
		rows=rmap.get("rows").toString();
		model.setList(map);
		model.setRows(rows);
		return model;
	}

	/**
	 * 删除多个用户
	 */
	@Override
	public void deleteManyUser(String[] listvals) {
			for(String b:listvals){
				mapper.delete(b);
				System.out.println(b);
			
		}
	}

	/**
	 * 添加用户
	 */
	@Override
	public void addUser(User user) {
		mapper.adduser(user);
	}

	/**
	 * 查看单个用户信息
	 */
	public HashMap selectByid(String id){
		HashMap map=null;
		map=mapper.selectByid(id);
		return map;
	}


	/**
	 * 修改用户信息
	 */
	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
			mapper.updateWithpwd(user);
	}


	/**
	 * 用户自查
	 */
	@Override
	public HashMap selectuserImf(String id) {
		// TODO Auto-generated method stub
		HashMap map=null;
		map=mapper.selectuserImf(id);
		return map;
	}


	@Override
	public HashMap selectuserId(int id) {
		HashMap map=null;
		map=mapper.selectuserId(id);
		return map;
	}


	@Override
	public void updateuserDate(User user) {
	
		mapper.updateuserData(user);
		
		
	};
	
	
	
}
