package com.homeshop18.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homeshop18.ui.bean.Product;

@Controller
@RequestMapping(value="/")
public class HomePageController {

	@RequestMapping(method = RequestMethod.GET)
<<<<<<< HEAD
	public String welcome(ModelMap model) {
		model.addAttribute("message", "Welcome to Home Page");
		model.addAttribute("product",new Product());
=======
	public String welcome(@CookieValue(value = "JSESSIONID") String fooCookie, HttpServletRequest request,HttpServletResponse response) {
		Cookie cookie = new Cookie("JSESSIONID", "1234567890");
		cookie.setDomain("localhost");
		response.addCookie(cookie);
		System.out.println(fooCookie);
>>>>>>> f0ea6022b1efe00795ceaa9d8c2cad3f47e84394
		return "index";
	}
}
