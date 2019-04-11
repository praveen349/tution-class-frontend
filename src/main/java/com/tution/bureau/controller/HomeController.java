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
import com.tution.bureau.common.Constants;
import com.tution.bureau.interceptor.SessionInterceptor;
import com.tution.bureau.interceptor.SessionWrapper;
import com.tution.common.ContactUsService;
import com.tution.common.GenericBackendResponse;
import com.tution.common.GenericResponse;
import com.tution.model.ContactUs;
import com.tution.utils.TutionUtils;

@Controller
public class HomeController extends CommonController {
	
	
	@Autowired
	ContactUsService contactUsService;

	Gson gson = new Gson();
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView showIndexPage(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("session") SessionWrapper session) throws IOException {
		ModelAndView mav = new ModelAndView("home");
		if (SessionInterceptor.isloggedin(session)) {
			mav = new ModelAndView("home");
		}
		return mav;
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contactus(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("session") SessionWrapper session) throws IOException {
		ModelAndView mav = new ModelAndView("contact");
		if (SessionInterceptor.isloggedin(session)) {
			mav = new ModelAndView("contact");
		}
		return mav;
	}
	
	
	@RequestMapping(value = "contact/us", method = RequestMethod.POST)
	@ResponseBody
	public GenericResponse conatactUs(@RequestBody String data, HttpServletResponse response, HttpServletRequest request, @ModelAttribute("session") SessionWrapper session) {
		GenericResponse feResopnse = new GenericResponse();
		if (TutionUtils.isNotEmpty(data)) {
			ContactUs contactUs = gson.fromJson(data, ContactUs.class);
				try {
						GenericBackendResponse beResponse = contactUsService.contactUsSave(contactUs);
						if (beResponse != null) {
							if (beResponse.isS()) {
								feResopnse.setStatus(Constants.SUCCESS);
								feResopnse.setSuccessMsg(beResponse.getMsg());
							} else {
								feResopnse.setStatus(Constants.FAILED);
								feResopnse.setErrorDetails(beResponse.getEd());
							}
						}
					
				} catch (Exception e) {
					logger.error(e.getMessage(), e);
				}
			
		} else {
			feResopnse.setErrorDetails(Constants.SOME_THING_WENT_WRONG);
			feResopnse.setStatus(Constants.FAILED);
		}
		return feResopnse;
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView showIndexPage1(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("session") SessionWrapper session) throws IOException {
		ModelAndView mav = new ModelAndView("home");
		if (SessionInterceptor.isloggedin(session)) {
			mav = new ModelAndView("home");
		}
		return mav;
	}
	
}
