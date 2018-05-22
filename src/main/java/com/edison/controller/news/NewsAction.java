package com.edison.controller.news;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edison.entity.ReturnObj;
import com.edison.service.NewsService;

@Controller
@RequestMapping("/news")  
public class NewsAction {

	@Autowired
	private NewsService mService;
	
	@RequestMapping(value="/getLatesNews", method=RequestMethod.POST)
	@ResponseBody
	public Object getLatesNews(@RequestParam("start")int start, @RequestParam("size")int size) {
		ReturnObj rback  = new ReturnObj();
		rback.setObject(mService.findNewsList(start, size));
		return rback;
	}
	
	@RequestMapping(value="/getNews", method=RequestMethod.POST)
	@ResponseBody
	public Object getNews(@RequestParam("id")int id) {
		ReturnObj rback  = new ReturnObj();
		rback.setObject(mService.findNewsByID(id));
		return rback;
	}
}
