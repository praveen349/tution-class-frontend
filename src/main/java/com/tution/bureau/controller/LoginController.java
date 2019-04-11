package com.tution.bureau.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.tution.bureau.interceptor.SessionInterceptor;
import com.tution.bureau.interceptor.SessionWrapper;
import com.tution.cache.TutionCache;
import com.tution.constant.Constants;
import com.tution.model.User;
import com.tution.request.UserLoginRequest;
import com.tution.response.UserLoginResponse;
import com.tution.service.LoginService;
import com.tution.utils.Tokenizer;
import com.tution.utils.TutionUtils;


@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;

	private static Gson gson = new Gson();
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView showIndexPage(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("session") SessionWrapper session) throws IOException {
		ModelAndView mav = new ModelAndView("signup");
		if (SessionInterceptor.isloggedin(session)) {
			mav = new ModelAndView("signup");
		}
		return mav;
	}

	@RequestMapping(value = "player/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public UserLoginResponse login(@RequestBody String data, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		UserLoginResponse feResponse = new UserLoginResponse();
		try {
			String ip = TutionUtils.getClientIp(request);
			if (TutionUtils.isNotEmpty(data) && TutionUtils.isNotEmpty(ip)) {
				UserLoginRequest userLoginRequest = Tokenizer.decrypt(data, TutionCache.assignAndGetToken(ip), UserLoginRequest.class);

				UserLoginResponse beResponse = loginService.login(userLoginRequest, TutionUtils.createAPIMeta(null, request));
				
				if (beResponse != null) {
					if (beResponse.isS()) {
						User user = new User();
						if (beResponse.isS()) {
							feResponse.setStatus(Constants.SUCCESS);
							feResponse.setSuccessMsg(beResponse.getMsg());
							TutionUtils.setCookie(beResponse.getToken(), response);
							TutionUtils.sessionCreate(beResponse.getUser(), request);
							feResponse.setUrl(request.getContextPath() + "/");
						} 
					} else {
						feResponse.setStatus(Constants.FAILED);
						feResponse.setErrorDetails(beResponse.getEd());
					}
				} else {
					feResponse.setStatus(Constants.NOT_RESPONEDING);
					feResponse.setErrorDetails(Constants.SERVER_IS_NOT_RESPONDING);
				}
			} else {
				feResponse.setStatus(Constants.FAILED);
				feResponse.setErrorDetails(Constants.IP_NOT_FOUND);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			feResponse.setStatus(Constants.FAILED);
			feResponse.setErrorDetails(Constants.SOME_THING_WENT_WRONG);
		}
		return feResponse;
	}

	

	
}
