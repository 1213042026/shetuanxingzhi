package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.Column;
import org.ares.mapper.IColumnMapper;
import org.ares.mapper.IDeleteColumnMapper;
import org.ares.service.ColumnService;
import org.ares.service.DeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeleteColumnServiceImpl implements DeleteService {
	@Autowired
	private IDeleteColumnMapper deleteColumnMapper;

	@Override
	public void deleteColumn(Column column) {
		//递归删除所选栏目下的子栏目
		dgDelete(column.getId());
		//删除选中的栏目 
		deleteColumnMapper.deleteColumn(column.getId());
	}

	private void dgDelete(Long id) {
		List list = deleteColumnMapper.sonList(id);
		for (Object obj : list) {
			dgDelete(Long.parseLong(((HashMap)obj).get("id").toString()));
			deleteColumnMapper.deleteColumn(Long.parseLong(((HashMap)obj).get("id").toString()));
		}
	}
}
