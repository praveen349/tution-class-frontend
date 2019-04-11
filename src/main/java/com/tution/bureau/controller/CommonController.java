package com.tution.bureau.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;

import com.tution.bureau.interceptor.SessionWrapper;

public class CommonController {

	@ModelAttribute("session")
	public SessionWrapper getSession(HttpServletRequest request) {
		return (SessionWrapper) request.getAttribute("session");
	}

}
