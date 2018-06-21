package org.ares.service.impl;

import java.util.HashMap;
import java.util.List;

import org.ares.mapper.ISelectNewsMapper;
import org.ares.service.ISelectNewsService;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Transactional
@Service
public  class SelectNewsServiceImpl implements ISelectNewsService{
	@Autowired
	ISelectNewsMapper mapper;
	//根据栏目查询最新几条新闻
	public List selectNews(String partid) {
		
		List list=mapper.select(partid);
		return list;
	}
	//查询栏目
	public List selectByPart() {
		List list=mapper.selectByPart();
		return list;
	}
	//查询单篇新闻
	public HashMap selectAnew(String newsid) {
		HashMap map=mapper.selectAnew(newsid);
		int hit=Integer.parseInt(map.get("cms_news_hits").toString());
		hit=hit+1;
		mapper.updateHits(newsid, hit);
		return map;
	}
	//查询分栏目头条
	public HashMap selectPartHeadline(String partid) {
		HashMap map=mapper.selectPartHeadline(partid);
		return map;
	}
	//带有分页效果的分栏目新闻列表
	public HashMap selectPartnewslist(String partid, pageModel pagemodel) {
		HashMap rows=mapper.selectnewsrows(partid);
		String rowsnum= rows.get("rows").toString();
		
		pagemodel.setRows(rowsnum);
		int BeginIndex=pagemodel.getBeginIndex();
		
		int cpage=pagemodel.getCpage();
		int totalpage=pagemodel.getTotalpage();
		int _rows=pagemodel.getRows();
		
		List list=mapper.selectPartnewslist(partid, BeginIndex);
		
		HashMap newslist=new HashMap();
		newslist.put("cpage", cpage);
		newslist.put("totalpage", totalpage);
		newslist.put("list", list);
		newslist.put("rows", _rows);
		return newslist;
	}
	//文章评论功能
	public void insertComments(String newsid, String comments, String nickname) {
		mapper.insertComments(newsid, comments, nickname);
	}
	//查询文章评论
	public HashMap selectComments(String newsid,pageModel pagemodel) {
		HashMap map=mapper.selectCommentsRows(newsid);
		String rows= map.get("comments_rows").toString();
		pagemodel.setRows(rows);
		int BeginIndex=pagemodel.getBeginIndex();
		int cpage=pagemodel.getCpage();
		int totalpage=pagemodel.getTotalpage();
		List list=mapper.selectComments(newsid,BeginIndex);
		HashMap commentsmap=new HashMap();
		commentsmap.put("rows",rows);
		commentsmap.put("cpage",cpage);
		commentsmap.put("totalpage",totalpage);
		commentsmap.put("list",list);
		return commentsmap;
	}
	//模糊搜索
	@Override
	public List selectNewsByKeyword(String keyword) {
		List list=mapper.selectMohu(keyword);
		return list;
	}
	//插入新闻评论回复
	@Override
	public void insertReply(String commentsid, String content, String nickname) {
		mapper.insertReply(commentsid, content, nickname);
		
	}
	//查询新闻评论回复
	@Override
	public HashMap selectReply(String commentsid, pageModel pagemodel) {
		HashMap map=mapper.selectReplyRows(commentsid);
		String rows= map.get("reply_rows").toString();
		pagemodel.setRows(rows);
		int BeginIndex=pagemodel.getBeginIndex();
		int cpage=pagemodel.getCpage();
		int totalpage=pagemodel.getTotalpage();
		List replylist=mapper.selectReply(commentsid, BeginIndex);
		HashMap replymap=new HashMap();
		replymap.put("rows",rows);
		replymap.put("cpage",cpage);
		replymap.put("totalpage",totalpage);
		replymap.put("replylist",replylist);
		return replymap;
	}

}
