package org.ares.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ares.entity.Txt;
import org.ares.vo.pageModel;
import org.springframework.stereotype.Repository;

@Repository
public interface ITxtMapper {
	
	/**
	 * 查询全部文章
	 * @return
	 */
	public List<HashMap> select(int index, int pageSize) ;
	/**
	 * 查询总条数
	 * @return
	 */
	public HashMap selectrows();
	/**
	 * 模糊查询条数
	 * @param keywords
	 * @return
	 */
	public HashMap selectrowsBycondition(@Param("keywords")String keywords);
	/**
	 * 按栏目查询条数
	 * @param partname
	 * @return
	 */
	public HashMap selectrowsBypart(@Param("partname")String partname);
	/**
	 * 删除单个文章
	 * @param id
	 */
	public void delete(String id) ;
	/**
	 * 查询单个文章详情
	 * @param id
	 */
	public  HashMap selectxq(String id);
	/**
	 * 文章按条件模糊查询
	 * @return
	 */
	//public List<HashMap> selectBycondition(@Param("keywords")String keywords,@Param("0")int index,@Param("1") int pageSize) ; 
	public List<HashMap> selectBycondition(@Param("keywords")String keywords,int index,int pageSize) ; 
	
	/**
	 * 查询文章对应的栏目id
	 * @param cms_part_nam
	 * @return
	 */
	public HashMap selectTxt_part(String cms_part_name);
	/**
	 *  添加文章
	 * @param txt
	 */
	public void inserttxt(Txt txt);
	/**
	 * 查询全部栏目的名字
	 * @return
	 */
	public List<HashMap> selectTxt_part_name();
	/**
	 * 查询文章审核
	 * @param id
	 * @return
	 */
	public HashMap auditing(String id);
	/**
	 * 审核过程A 通过
	 * @param id
	 */
	public void auditA(String id);
	/**
	 * 审核过程B 驳回
	 * @param id
	 */
	public void auditB(String id);
	
	/**
	 * 按栏目查询文章
	 * @param partname
	 * @param index
	 * @param pageSize
	 * @return
	 */
	public List<HashMap> selectBypart(@Param("partname")String partname,int index,int pageSize) ; 
	/**
	 * 最新文章top10
	 * @return
	 */
	public List<HashMap> selectToptennews();
	/**
	 * 待审文章Top9
	 * @return
	 */
	public List<HashMap> selectToptenwait();
	/**
	 * 排行榜top8
	 * @return
	 */
	public List<HashMap> selectTop8();
	/**
	 * 查询待审文章全部
	 * @param index
	 * @param pageSize
	 * @return
	 */
	public List<HashMap> selectwait(int index, int pageSize) ;
	/**
	 * 查询待审文章条数
	 * @return
	 */
	public HashMap selectwaitrows();
	public HashMap selectlog();
	
} 
