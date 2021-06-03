package com.ezen.burger.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.burger.dto.BoardVO;
import com.ezen.burger.dto.MemberVO;
import com.ezen.burger.dto.OrderVO;
import com.ezen.burger.dto.Paging;
import com.ezen.burger.dto.ProductVO;
import com.ezen.burger.service.AdminService;
import com.ezen.burger.service.BoardService;
import com.ezen.burger.service.ProductService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class AdminController {
	
	@Autowired
	AdminService as;
	
	@Autowired
	ProductService ps;
	
	@Autowired
	BoardService bs;
	
	@Autowired
	ServletContext context;
	
	
	
	@RequestMapping("adminLogin")
	public String adminmain(Model model, HttpServletRequest request) {	
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			return "member/loginForm";
		}else if(mvo.getAdminchk().equals("y")) {
			return "admin/adminmain";
		}else {
			return "member/loginForm";
		}
	}
	
	
	@RequestMapping("adminBoardRepsave")
	public String admin_board_repsave(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		String reply = request.getParameter("reply");
		BoardVO bvo = new BoardVO();
		bvo.setNum(Integer.parseInt(num));
		bvo.setReply(reply);
		as.updateBoard(bvo);
		return "redirect:/adminBoardDetail?num=" + num;
	}
	
	
	
	@RequestMapping("adminBoardDetail")
	public ModelAndView admin_board_detail(@RequestParam("num") int num,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = bs.getboard(num);
		mav.addObject("BoardVO", bvo);
		mav.setViewName("admin/board/boardDetail");
		return mav;
		
	}
	
	
	
	
	@RequestMapping("orderSave")
	public String admin_Order_Save(@RequestParam("result") String[] resultArr,
			HttpServletRequest request) {
		for(String odseq : resultArr) as.updateOrderResult(odseq);
		return "redirect:/adminOrderList";
		
	}

	@RequestMapping("productUpdate")
	public String product_update(Model model, HttpServletRequest request) {
		
		String path = "resources/static/image/product";
		
		/*
		if(kind.equals("스페셜할인팩")) path = path + "/1.SP";
		else if(kind.equals("프리미엄")) path = path + "/2.PR";
		else if(kind.equals("와퍼")) path = path + "/3.W";
		else if(kind.equals("주니어버거")) path = path + "/4.JNB";
		else if(kind.equals("올데이킹&치킨버거")) path = path + "/5.AKCB";
		else if(kind.equals("사이드")) path = path + "/6.SIDE";
		else if(kind.equals("음료&디저트")) path = path + "/7.DRINK";
		*/
		
		String savePath = context.getRealPath(path);
	
		MultipartRequest multi=null;
		ProductVO pvo = new ProductVO();
		try {
			multi = new MultipartRequest(request, savePath, 5*1024*1024,
					"UTF-8", new DefaultFileRenamePolicy() );
						
			pvo.setPseq(Integer.parseInt(multi.getParameter("pseq")));
			pvo.setKind(multi.getParameter("kind"));
			pvo.setName(multi.getParameter("name"));
			pvo.setPrice(Integer.parseInt(multi.getParameter("price")));
			pvo.setContent(multi.getParameter("content"));
			if(multi.getFilesystemName("image") == null) 
				pvo.setImage(multi.getParameter("nonmakeImg"));
			else {
				String image = multi.getFilesystemName("image");
				/*
				if(kind.equals("스페셜할인팩")) image = "1.SP/"+ image;
				else if(kind.equals("프리미엄")) image = "2.PR/"+ image;
				else if(kind.equals("와퍼")) image = "3.W/"+ image;
				else if(kind.equals("주니어버거")) image = "4.JNB/"+ image;
				else if(kind.equals("올데이킹&치킨버거")) image = "5.AKCB/"+ image;
				else if(kind.equals("사이드")) image = "6.SIDE/"+ image;
				else if(kind.equals("음료&디저트")) image = "7.DRINK/"+ image;
				*/
				pvo.setImage(image);
			}
		} catch (IOException e) {	e.printStackTrace();}
		as.updateProduct(pvo);
		return "redirect:/adminProductDetail?pseq=" + multi.getParameter("pseq");
		
	}
	
	
	@RequestMapping("productUpdateForm")
	public ModelAndView product_update_form(Model model, HttpServletRequest request,
			@RequestParam("pseq") String pseq) {
		ModelAndView mav = new ModelAndView();
		ProductVO pvo =  ps.getProduct(pseq);
		model.addAttribute("productVO", pvo);
		String kindList[] = { "스페셜할인팩", "프리미엄", "와퍼", "주니어버거", "올데이킹&치킨버거", "사이드", "음료&디저트"};    
		mav.addObject("kindList", kindList);
		mav.setViewName("admin/product/productUpdate");
		
		return mav;
		
	}
	
	
	
	
	
	@RequestMapping("adminProductDetail")
	public ModelAndView product_detail(HttpServletRequest request, 
			@RequestParam("pseq") String pseq) {
		
		ModelAndView mav = new ModelAndView();
		ProductVO pvo = ps.getProduct(pseq);
		mav.addObject("productVO", pvo);
		String kindList[] = { "0", "스페셜할인팩", "프리미엄", "와퍼", "주니어버거", "올데이킹&치킨버거", "사이드", "음료&디저트"};
		int index = Integer.parseInt(pvo.getKind());
		mav.addObject("kind", kindList[index]);
		mav.setViewName("admin/product/productDetail");
		return mav;
	}
	
	
	
	
	@RequestMapping("productWrite")
	public String product_write(HttpServletRequest request) {
		
		String savePath = context.getRealPath("resources/product_images");
		try {
			MultipartRequest multi = new MultipartRequest(request, savePath, 
					5*1024*1024 , "UTF-8", new DefaultFileRenamePolicy());
			ProductVO pvo = new ProductVO();
			pvo.setKind(multi.getParameter("kind"));
		    pvo.setName(multi.getParameter("name"));
		    pvo.setPrice(Integer.parseInt(multi.getParameter("price1")));
		    pvo.setContent(multi.getParameter("content"));
		    pvo.setImage(multi.getFilesystemName("image"));
		    as.insertProduct(pvo);
		} catch (IOException e) { e.printStackTrace();  }
		return "redirect:/productList";		
	}
	
	
	
	
	@RequestMapping("productWriteForm")
	public ModelAndView product_write_form( HttpServletRequest request) {
		String kindList[] = {"스페셜할인팩", "프리미엄", "와퍼", "주니어버거", "올데이킹&치킨버거", "사이드", "음료&디저트"};
		ModelAndView mav = new ModelAndView();
		mav.addObject("kindList", kindList);
		mav.setViewName("admin/product/productWriteForm");
		return mav;
	}
	
	
	
	
	
	@RequestMapping("adminBoardList")
	public ModelAndView adminQnaList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		int page=1;
			if( request.getParameter("first")!=null ) {
				session.removeAttribute("page");
				session.removeAttribute("key");
			}
			String key = "";
			if( request.getParameter("key") != null ) {
				key = request.getParameter("key");
				session.setAttribute("key", key);
			} else if( session.getAttribute("key")!= null ) {
				key = (String)session.getAttribute("key");
			} else {
				session.removeAttribute("key");
				key = "";
			} 
			if( request.getParameter("page") != null ) {
				page = Integer.parseInt(request.getParameter("page"));
				session.setAttribute("page", page);
			} else if( session.getAttribute("page")!= null ) {
				page = (int) session.getAttribute("page");
			} else {
				page = 1;
				session.removeAttribute("page");
			}
			Paging paging = new Paging();
			paging.setPage(page);
			int count = as.getAllCount("b_board", "title", key);
			paging.setTotalCount(count);
			paging.paging();
			List<BoardVO> boardList  = as.listBoard(paging, key);
			mav.addObject("paging", paging);
			mav.addObject("key", key);
			System.out.println(boardList.size()); 
			mav.addObject("boardList", boardList);
			mav.setViewName("admin/board/boardList");
			
		return mav;
	}
	
	
	
	@RequestMapping("adminOrderList")
	public ModelAndView orderList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		int page=1;
			if( request.getParameter("first")!=null ) {
				session.removeAttribute("page");
				session.removeAttribute("key");
			}
			String key = "";
			if( request.getParameter("key") != null ) {
				key = request.getParameter("key");
				session.setAttribute("key", key);
			} else if( session.getAttribute("key")!= null ) {
				key = (String)session.getAttribute("key");
			} else {
				session.removeAttribute("key");
				key = "";
			} 
			if( request.getParameter("page") != null ) {
				page = Integer.parseInt(request.getParameter("page"));
				session.setAttribute("page", page);
			} else if( session.getAttribute("page")!= null ) {
				page = (int) session.getAttribute("page");
			} else {
				page = 1;
				session.removeAttribute("page");
			}

			Paging paging = new Paging();
			paging.setPage(page);
			int count = as.getAllCount("b_order_view", "mname", key);
			paging.setTotalCount(count);
			paging.paging();
			List<OrderVO> orderList = as.listOrder(paging, key);
			mav.addObject("paging", paging);
			mav.addObject("key", key);
			mav.addObject("orderList", orderList);
			mav.setViewName("admin/order/orderList");
		return mav;
	}
	
	
	
	
	
	@RequestMapping("/adminProductList")
	public ModelAndView productList(Model model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();		
		int page=1;		
			if( request.getParameter("first")!=null ) {
				session.removeAttribute("page");
				session.removeAttribute("key");
			}
			
			String key = "";
			
			if( request.getParameter("key") != null ) {
				key = request.getParameter("key");
				session.setAttribute("key", key);
			} else if( session.getAttribute("key")!= null ) {
				key = (String)session.getAttribute("key");
			} else {
				session.removeAttribute("key");
				key = "";
			} 	
			
			
			if( request.getParameter("page") != null ) {
				page = Integer.parseInt(request.getParameter("page"));
				session.setAttribute("page", page);
			} else if( session.getAttribute("page")!= null ) {
				page = (int) session.getAttribute("page");
			} else {
				page = 1;
				session.removeAttribute("page");
			}						
			Paging paging = new Paging(); 
			paging.setPage(page); 			
			int count = as.getAllCount("b_product", "name", key); 			
			paging.setTotalCount(count);
			paging.paging();
			List<ProductVO> productList = as.listProduct(paging, key);		
			mav.addObject("productList",productList);
			mav.addObject("paging", paging); 		
			mav.addObject("key", key);
			mav.setViewName("admin/product/productList");
			
			return mav;	
		}		
			
	
}

