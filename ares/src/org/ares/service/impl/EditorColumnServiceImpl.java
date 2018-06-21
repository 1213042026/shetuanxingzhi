package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.Column;
import org.ares.mapper.IColumnMapper;
import org.ares.mapper.IDeleteColumnMapper;
import org.ares.mapper.IEditorColumnMapper;
import org.ares.service.ColumnService;
import org.ares.service.DeleteService;
import org.ares.service.IEditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditorColumnServiceImpl implements IEditorService {
	@Autowired
	private IEditorColumnMapper editorColumnMapper;

	@Override
	public void editorColumn(Column column) {

		editorColumnMapper.editorColumn(column);
	}


}
