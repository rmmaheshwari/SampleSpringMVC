package com.radha.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.radha.ui.bean.Item;
import com.radha.ui.bean.Price;
import com.radha.ui.bean.Product;

@Controller
@RequestMapping(value = "/")
public class HomePageController {
	
	private static final Map<Integer, String> COUNTRY_MAP = new LinkedHashMap<Integer, String>();

	@PostConstruct
	public void init() {
		COUNTRY_MAP.put(1, "India");
		COUNTRY_MAP.put(2, "USA");
	}

	@RequestMapping(method = RequestMethod.GET)
	public String welcome(Model model) {
		Product product = new Product();
		product.setTitle("Mr.");
		product.setId(1l);
		product.setCountryId(2);
		List<Item> items = new ArrayList<Item>();
		Item item = new Item();
		item.setTitle("RAdha");
		Item item2 = new Item();
		item2.setTitle("fd");
		Price price = new Price();
		price.setPrice(BigDecimal.TEN);
		item.setPrice(price);
		items.add(item);
		//items.add(item2);
		product.setItems(items);
		model.addAttribute("product", product);
		model.addAttribute("countryMap", COUNTRY_MAP);
		return "index";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String post(@ModelAttribute("product") Product product, Model model) {
		model.addAttribute("countryMap", COUNTRY_MAP);
		try {
			System.out.println(new ObjectMapper().writeValueAsString(product));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}
}
