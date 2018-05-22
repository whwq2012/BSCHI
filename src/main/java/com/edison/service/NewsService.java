package com.edison.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.edison.entity.News;

public interface NewsService {
	public List<News> findNewsList(int current_index, int page_size);
	public void removeNews(int id);
	public News findNewsByID(int id);
}
