package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.entity.Txt;
import org.ares.mapper.ITxtMapper;
import org.ares.service.ITxtServise;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;


@Transactional
@Service
public class TxtServiceImpl implements ITxtServise {

	@Autowired
	ITxtMapper mapper;
	
	/**
	 * 查询带分页的所有文章
	 */
	@Override
	public pageModel<HashMap> selectTxt(pageModel model) throws Exception{
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
	 * 模糊查询文章
	 */
	@Override
	public pageModel<HashMap> selectBycondition(String keywords,pageModel model) throws Exception{
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
	 * 单个删除文章
	 */
	@Override
	public void deleteTxtByid(String id) {
		// TODO Auto-generated method stub
		mapper.delete(id);
	}
	
	/**
	 * 查询单个文章详情
	 */
	@Override
	public HashMap selectTxtxq(String id) {
		HashMap map=null;
		map=mapper.selectxq(id);
		return map;
	}
	
	/**
	 * 添加文章
	 */
	@Override
	public void inserttxt(Txt txt) {
		HashMap map=mapper.selectTxt_part(txt.getCms_part_name());
		txt.setParitid( (int) map.get("id"));
		mapper.inserttxt(txt);
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 添加文章中的栏目名字
	 */
	@Override
	public List<HashMap> selectTxt_part_name() {
		// TODO Auto-generated method stub
		List<HashMap> map=null;
		map=mapper.selectTxt_part_name();
		return map;
	}
	
	
	/**
	 * 查询文章审核页面
	 */
	public HashMap auditingTxt(String id){
		HashMap map=null;
		map=mapper.auditing(id);
		return map;
	}
	/**
	 * 审核过程A 通过
	 */
	public void auditA(String id){
		mapper.auditA(id);
	}
	/**
	 * 审核过程A 驳回
	 */
	public void auditB(String id){
		mapper.auditB(id);
	}
	/**
	 * 多个删除
	 * @param listval
	 */
	public void deleteAll(String []listval){
		for(String a:listval){
			mapper.delete(a);
		}
	}
	/**
	 * 按栏目查询文章
	 */
	
	@Override
	public pageModel<HashMap> selectBypart(String partname, pageModel model) throws Exception {

		List<HashMap> map=null;
		map=mapper.selectBypart(partname,model.getBeginIndex(),model.getPageSize());
		HashMap rmap=null;
		String rows=null;
		rmap=mapper.selectrowsBypart(partname);
		rows=rmap.get("rows").toString();
		
		model.setRows(rows);
		model.setList(map);
		return model;
	}
	
	
	/**
	 * 最新文章top10
	 */
	@Override
	public List<HashMap> selectToptennews() {
		
		List<HashMap> map=null;
		map=mapper.selectToptennews();
		return map;
	}
	/**
	 * 待审文章top9
	 */
	public List<HashMap> selectToptenwait(){
		List<HashMap> map=null;
		map=mapper.selectToptenwait();
		return map;
	}
	/**
	 * 排行榜top8
	 */
	public List<HashMap> selectTop8(){
		List<HashMap> map=null;
		map=mapper.selectTop8();
		return map;
	}
	
	/**
	 * 待审文章查询
	 */
	@Override
	public pageModel<HashMap> selectwait(pageModel model) throws Exception {
		List map=null;
		HashMap rmap=null;
		String rows=null;
		map= mapper.selectwait(model.getBeginIndex(),model.getPageSize());
		rmap= mapper.selectwaitrows();
		rows=rmap.get("rows").toString();
		model.setList(map);
		model.setRows(rows);
		return model;
	}
	@Override
	public HashMap selectLogTime() {
		HashMap map=null;
		map=mapper.selectlog();
		return map;
	}
}
