package com.radha.controller;

import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.UserOperations;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.google.api.Google;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String welcome(Model model) {
		return null;
	}

	@RequestMapping(value = "/facebookInfo", method = RequestMethod.GET)
	@ResponseBody
	public Object getFacebookInfo(@RequestParam("token") String token) {
		Facebook facebook = new FacebookTemplate(token);
		UserOperations userOperations = facebook.userOperations();
		return userOperations.getUserProfile();
	}

	@RequestMapping(value = "/googleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Object getGoogleInfo(@RequestParam("token") String token) {
		Google google = new GoogleTemplate(token);
		return google.plusOperations().getGoogleProfile();
	}
}
