package com.homeshop18.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homeshop18.ui.bean.Item;
import com.homeshop18.ui.bean.Product;

@Controller
@RequestMapping(value = "/")
public class HomePageController {

	@RequestMapping(method = RequestMethod.GET)
	public String welcome(Model model) {
		Product product = new  Product();
		product.setTitle("Mr.");
		product.setId(1l);
		List<Item> items = new ArrayList<Item>();
		Item item = new Item(); 
		item.setTitle("RAdha");
		items.add(item);
		product.setItems(items); 		
		model.addAttribute("product", product); 
		return "index";
	}
}
