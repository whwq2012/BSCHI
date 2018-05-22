package com.edison.dao.News;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.edison.entity.News;

public interface NewsDao {
	public void deleteNews(@Param("id") int id);
	public List<News> getNewsList(@Param("current_index")int current_index, @Param("page_size")int page_size);
	public News getNewsByID(@Param("id") int id);
}
