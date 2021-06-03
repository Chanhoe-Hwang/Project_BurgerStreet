package com.ezen.burger.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.burger.dto.ProductVO;
import com.ezen.burger.service.CartService;
import com.ezen.burger.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService ps;
	CartService cs;
	
	@RequestMapping("productDetail")
	public String product_detail(Model model,  @RequestParam("pseq") String pseq) {
		ProductVO pd = ps.getProduct(pseq);
		model.addAttribute("productVO", pd);
		return "product/productDetail";
	}
	
	@RequestMapping("Detail7")
	public ModelAndView Detail7(Model model) {
		String kind="7";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogDrink");
		return mav;  
	}	
	
	@RequestMapping("detail7")
	public ModelAndView detail7(Model model) {
		String kind="7";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Drink");
		return mav;  
	}	
	
	@RequestMapping("Detail6")
	public ModelAndView Detail6(Model model) {
		String kind="6";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogSide");
		return mav;  
	}	
	
	@RequestMapping("detail6")
	public ModelAndView detail6(Model model) {
		String kind="6";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Side");
		return mav;  
	}	
	
	@RequestMapping("Detail5")
	public ModelAndView Detail5(Model model) {
		String kind="5";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogAlldayking");
		return mav;  
	}
	
	@RequestMapping("detail5")
	public ModelAndView detail5(Model model) {
		String kind="5";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Alldayking");
		return mav;  
	}	
	
	@RequestMapping("Detail4")
	public ModelAndView Detail4(Model model) {
		String kind="4";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogJunior");
		return mav;  
	}
	
	@RequestMapping("detail4")
	public ModelAndView detail4(Model model) {
		String kind="4";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Junior");
		return mav;  
	}	
	
	@RequestMapping("Detail3")
	public ModelAndView Detail3(Model model) {
		String kind="3";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogWapper");
		return mav;  
	}
	
	@RequestMapping("detail3")
	public ModelAndView detail3(Model model) {
		String kind="3";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Wapper");
		return mav;  
	}	
	
	@RequestMapping("Detail2")
	public ModelAndView Detail2(Model model) {
		String kind="2";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("LoginP/LogPremium");
		return mav;  
	}
	
	@RequestMapping("detail2")
	public ModelAndView detail2(Model model) {
		String kind="2";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Premium");
		return mav;  
	}

	
	@RequestMapping("Detail1")
	public String Detail1(Model model,HttpServletRequest request) {
		
		String kind="1";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);	
							
		model.addAttribute("productKindList", list);
		
		return "LoginP/LogSpecial";  
	}
	
	@RequestMapping("detail1")
	public ModelAndView detail1(Model model) {
		String kind="1";
		List<ProductVO> list = null;
		list = ps.getKindList(kind);
		ModelAndView mav = new ModelAndView();		
		mav.addObject("productKindList", list);
		mav.setViewName("product/Special");
		return mav;  
	}


	
}
