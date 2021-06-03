package com.ezen.burger.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.burger.dto.CartVO;
import com.ezen.burger.dto.MemberVO;
import com.ezen.burger.service.CartService;

@Controller
public class CartController {

	@Autowired
	CartService cs;
	
	
	@RequestMapping("deleteCart")
	public String cart_delete(Model model, @RequestParam("cseq") int cseq) {
			cs.deleteCart(cseq);
		return "redirect:/cartList";
	}

	@RequestMapping("cartList")
	public String cart_list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if( mvo == null) {
			return "member/loginForm";
		}else {
			 List<CartVO> list = cs.listCart(mvo.getId());
			 int count = cs.getCountCart(mvo.getId());
			 model.addAttribute("cartcnt", count);
			 model.addAttribute("cartList", list);
		}
		return "member/cartList";
	}
	
	
	/*
	 * @RequestMapping("cartList") public String cart_list(Model model,
	 * HttpServletRequest request) { List<CartVO> list = cs.listCart("chan"); int
	 * count = cs.getCountCart("chan"); model.addAttribute("cartcnt", count);
	 * model.addAttribute("cartList", list); return "member/cartList"; }
	 */
	
	
	@RequestMapping("cartInsert")
	public String cart_insert(Model model, HttpServletRequest request, 
			@RequestParam("pseq") int pseq) {
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if( mvo == null) {
			return "member/loginForm";
		}else {
			CartVO cvo = new CartVO();
			cvo.setId(mvo.getId());
			cvo.setPseq(pseq);			
			cs.insertCart(cvo);
		}
		return "redirect:/cartList";
	}
	
	/* 새로만든거 */
	@RequestMapping("payment")
	 public String payment(Model model, HttpServletRequest request) {
		 HttpSession session = request.getSession();
		 MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		 if (mvo == null) {
			    return "member/loginForm";
		 }else {
			 	int count = cs.getCountCart(mvo.getId());
			 
			 	String[] cseqArr = request.getParameterValues("cseq");
			 	String[] quantityArr = request.getParameterValues("quantity");
			 	for(int i = 0; i<cseqArr.length; i++) {
			 		cs.updateQuantity(mvo.getId(), quantityArr[i], cseqArr[i]);
			 	}
			  	List<CartVO> cartList = cs.listCart(mvo.getId());
			  	model.addAttribute("cartList", cartList);
			  	model.addAttribute("cartcnt", count);
		 }
			return "member/payment";
	  }
}
