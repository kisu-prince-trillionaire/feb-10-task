package com.demo.interseptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class MyInterceptor implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("This is preHandler");
		String word = request.getParameter("querybox");
		if(word.equals("porn")) {
			response.setContentType("text/html");
			response.getWriter().println("Invalid Search");
			return false;
		}
		return true;
	}
	
}
