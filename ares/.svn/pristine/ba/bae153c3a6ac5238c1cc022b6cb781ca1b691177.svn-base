package org.ares.service;

import java.util.HashMap;
import java.util.List;

import org.ares.vo.pageModel;

public interface ISelectNewsService {
	public List selectNews(String partid);
	public List selectByPart();
	public HashMap selectAnew(String newsid);
	public HashMap selectPartHeadline(String partid);
	public HashMap selectPartnewslist(String partid,pageModel pagemodel);
	public void insertComments(String newsid,String comments,String nickname);
	public HashMap selectComments(String newsid,pageModel pagemodel);
	public List selectNewsByKeyword(String keyword);
	public void insertReply(String commentsid,String content,String nickname);
	public HashMap selectReply(String commentsid,pageModel pagemodel);
}
