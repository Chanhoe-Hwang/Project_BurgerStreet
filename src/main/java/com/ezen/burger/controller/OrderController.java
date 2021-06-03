 package com.ezen.burger.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.burger.dto.CartVO;
import com.ezen.burger.dto.MemberVO;
import com.ezen.burger.dto.OrderVO;
import com.ezen.burger.service.CartService;
import com.ezen.burger.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService os;
	
	@Autowired
	CartService cs;
	
	
	
	@RequestMapping("insertOrder")
	 public String insert_order(Model model, HttpServletRequest request) {
		 HttpSession session = request.getSession();
		 MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		 if (mvo == null) {
			    return "member/loginForm";
		 }else {
				String addr1 = request.getParameter("addr1");
				String addr2 = request.getParameter("addr2");
				String contactnum = request.getParameter("contactnum");
			 	String comments = request.getParameter("comments");
				String cashyn = "";
				System.out.println(addr1);
				System.out.println(addr2);
				System.out.println(contactnum);
				System.out.println(comments);
				System.out.println(request.getParameter("cashyn"));
				if(request.getParameter("cashyn").equals("1"))	cashyn = "y";
				else cashyn = "n";
				System.out.println(cashyn);
				
			 	String[] cseqArr = request.getParameterValues("cseq");
			 	String[] quantityArr = request.getParameterValues("quantity");
			 	for(int i = 0; i<cseqArr.length; i++) {
			 		cs.updateQuantity(mvo.getId(), quantityArr[i], cseqArr[i]);
			 	}
			  	List<CartVO> cartList = cs.listCart(mvo.getId());
			  	
			  	os.insertOrder(cartList, mvo.getId(), addr1, addr2, contactnum, comments, cashyn);
		 }
			return "redirect:/orderList";
	  }
	
	@RequestMapping("orderList")
	public String order_list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	    if (mvo == null) {
	    	return "member/loginForm";
	    }else {
	    	int oseq = 0;
	    	oseq = os.LookupMaxOseq();
	    	List<OrderVO> list= os.listOrderByIdOseq(mvo.getId(), "1", oseq);
	    	int totalPrice = 0;
	    	for(OrderVO ovo : list)
		          totalPrice+=ovo.getPrice() * ovo.getQuantity();
	    	int count = cs.getCountCart(mvo.getId());
			model.addAttribute("cartcnt", count);
	    	model.addAttribute("orderList", list);
	    	model.addAttribute("totalPrice", totalPrice);
	    	if(oseq==0) return "member/Detail1";
	    }
		return "member/orderList";
	}
	
	
}
