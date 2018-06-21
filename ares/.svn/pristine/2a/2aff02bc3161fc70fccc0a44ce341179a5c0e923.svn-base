package org.ares.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ISelectNewsMapper {
	public List select(String partid);
	public List selectByPart();
	public HashMap selectAnew(String newsid);
	public HashMap selectPartHeadline(String partid);
	public List selectPartnewslist( @Param("partid")String partid,@Param("BeginIndex")int BeginIndex);
	public HashMap selectnewsrows(String partid);
	public void insertComments(@Param("newsid")String newsid,@Param("comments")String comments,@Param("nickname")String nickname);
	public List selectComments( @Param("newsid")String newsid,@Param("BeginIndex")int BeginIndex);
	public HashMap selectCommentsRows(String newsid);
	public void updateHits(@Param("newsid")String newsid,@Param("hit")int hit);
	public List selectMohu(String keywords);
	public void insertReply(@Param("commentsid")String commentsid,@Param("content")String content,@Param("nickname")String nickname);
	public List selectReply( @Param("commentsid")String commentsid,@Param("BeginIndex")int BeginIndex);
	public HashMap selectReplyRows(String commentsid);
}
