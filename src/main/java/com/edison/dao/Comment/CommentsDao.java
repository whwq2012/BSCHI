package com.edison.dao.Comment;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edison.entity.Comment;

public interface CommentsDao {
	
	public void addComment(Comment comment);
	
	public List<Comment> getCommentByNewsID(@Param("news_id")String news_id);
	
	public void deleteComment(@Param("id")String id);

}
