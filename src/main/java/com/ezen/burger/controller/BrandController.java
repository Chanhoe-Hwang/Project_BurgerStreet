package com.ezen.burger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BrandController {
	
	@RequestMapping("Brand1")
	public String Brand1(Model model) {
		String url="Brand/Brand1";		

		return url;
	}
	@RequestMapping("Brand2")
	public String Brand2(Model model) {
		String url="Brand/Brand2";		

		return url;
	}
	@RequestMapping("Brand3")
	public String Brand3(Model model) {
		String url="Brand/Brand3";		

		return url;
	}
	@RequestMapping("evt1")
	public String evt1(Model model) {
		String url="Brand/evt";		

		return url;
	}
	@RequestMapping("BurgerW")
	public String BugerW(Model model) {
		String url="Brand/BurgerW";		

		return url;
	}
	
}
