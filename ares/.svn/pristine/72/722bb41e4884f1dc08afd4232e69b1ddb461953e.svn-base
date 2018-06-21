package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.Column;
import org.ares.mapper.IColumnMapper;
import org.ares.mapper.IDeleteColumnMapper;
import org.ares.mapper.IMergeColumnMapper;
import org.ares.service.ColumnService;
import org.ares.service.DeleteService;
import org.ares.service.MergeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MergeColumnServiceImpl implements MergeService {
	@Autowired
	private IMergeColumnMapper mergeColumnMapper;

	@Override
	public void mergeColumn(Column column) {
	  HashMap fid = mergeColumnMapper.selectFatherIdList(column);	
		
	if(Long.parseLong((fid).get("cms_part_fatherid").toString())==0){
		mergeColumnMapper.updateFatherIdMergeColumn(column);
		mergeColumnMapper.updateNameMergeColumn(column);
		mergeColumnMapper.deleteTwoMergeColumn(column);
		

	}else{
		mergeColumnMapper.updateTxtFatherIdMergeColumn(column);
		mergeColumnMapper.updateNameMergeColumn(column);
		mergeColumnMapper.deleteTwoMergeColumn(column);
	}
	
}
}