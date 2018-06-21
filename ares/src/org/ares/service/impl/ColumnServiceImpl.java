package org.ares.service.impl;

import org.ares.entity.Column;
import org.ares.mapper.IColumnMapper;
import org.ares.service.ColumnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ColumnServiceImpl implements ColumnService {
	@Autowired
	private IColumnMapper columnMapper;
	@Override
	public int insertColumn(Column column) {
		return columnMapper.insertColumn(column);
	}
}
