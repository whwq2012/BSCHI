package com.edison.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.edison.entity.User;

public class BschiInceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("======处理请求之前======");
//		HttpSession currentSession = request.getSession();
//		currentSession.setAttribute("data", "孤傲苍狼");
        
		//获取session的Id
//		String sessionId = currentSession.getId();
        //判断session是不是新创建的
//         if (currentSession.isNew()) {
//             response.getWriter().print("session创建成功，session的id是："+sessionId);
//         }else {
//            response.getWriter().print("服务器已经存在该session了，session的id是："+sessionId);
//         }
//         User currentUser = new User();
//         currentUser = (User) currentSession.getAttribute("user");
//         if (currentUser != null) {
//	         if (currentUser.getName() == null) {    	 
//	        	 return false;
//	         } else {
//	        	 System.out.println("用户名已经登录" + currentUser.getName());
//	         }
//         }
		 return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("======处理请求之后，渲染页面前======");
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("======渲染页面后======");
//		HttpSession currentSession = request.getSession();
//		currentSession.setAttribute("user", CacheUtil.user);
		
	}

}
