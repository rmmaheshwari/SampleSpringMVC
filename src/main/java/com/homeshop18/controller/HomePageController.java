package com.homeshop18.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/")
public class HomePageController {

	@RequestMapping(method = RequestMethod.GET)
	public String welcome(@CookieValue(value = "JSESSIONID") String fooCookie, HttpServletRequest request,HttpServletResponse response) {
		Cookie cookie = new Cookie("JSESSIONID", "1234567890");
		cookie.setDomain("localhost");
		response.addCookie(cookie);
		System.out.println(fooCookie);
		return "index";
	}
}