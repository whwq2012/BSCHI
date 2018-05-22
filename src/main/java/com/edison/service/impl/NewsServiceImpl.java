package com.edison.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edison.dao.Comment.CommentsDao;
import com.edison.entity.Comment;
import com.edison.entity.News;
import com.edison.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private com.edison.dao.News.NewsDao NewsDao;
	
	@Override
	public List<News> findNewsList(int current_index, int page_size) {
		return NewsDao.getNewsList(current_index, page_size);
	}

	@Override
	public void removeNews(int id) {
		NewsDao.deleteNews(id);
		
	}

	@Override
	public News findNewsByID(int id) {
		return NewsDao.getNewsByID(id);
	}

}
