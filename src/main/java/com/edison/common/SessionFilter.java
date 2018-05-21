package com.edison.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.edison.entity.User;

public class SessionFilter implements Filter{

	private String notNeedLoginPages = "";
    private FilterConfig filterConfig;
    public SessionFilter() {

    }
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        this.filterConfig = fConfig;
        if (filterConfig.getInitParameter("notNeedLoginpages") != null) {
            notNeedLoginPages = filterConfig.getInitParameter("notNeedLoginpages");
        }
    }
    @Override
    public void destroy() {
       this.notNeedLoginPages = null;
    }

    @Override
     public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                FilterChain filterChain) throws IOException, ServletException {
            HttpServletRequest request = (HttpServletRequest)servletRequest;
            HttpServletResponse response = (HttpServletResponse)servletResponse;
            System.out.println("in session filter");
            String uri =  request.getRequestURI();
            String requestedUri = uri.substring(request.getContextPath().length() + 1);
            String [] pages = notNeedLoginPages.split(",");
            boolean isAllow = false;
            for(String page : pages) {
                if (page.equals(requestedUri)) {
                    isAllow = true;
                    break;
                }
            }
            HttpSession session = request.getSession();
            if (isAllow) {
                filterChain.doFilter(request, response);
            } else {

                User user = (User)session.getAttribute("user");
                if (user == null) {
                    if (request.getMethod().toLowerCase().equals("get")) {
                        String queryString = request.getQueryString();
                        String go = requestedUri;
                        if (!StringUtil.isEmpty(queryString)) {
                            go = go + "#" + request.getQueryString();
                        }
                        //response.sendRedirect(request.getContextPath() + "/user/login.action?go=" + go);
                    } else {
                        response.sendRedirect(request.getContextPath() + "/login");
                    }

                } else {
                    filterChain.doFilter(request, response);
                }
            }

        }
}
