package com.ezen.burger.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.burger.dto.BoardVO;
import com.ezen.burger.dto.Paging;
import com.ezen.burger.service.BoardService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	
	
	
	
	
	@RequestMapping(value="boardWrite", method = RequestMethod.POST)
	public String board_write(@ModelAttribute("dto") BoardVO boardvo, 
			HttpServletRequest request,	BindingResult result, Model model  ) {
		try {
			String path = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
			MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*10,
			        "UTF-8", new DefaultFileRenamePolicy());
			boardvo.setUserid(multi.getParameter("userid"));
			boardvo.setPass(multi.getParameter("pass"));
			boardvo.setEmail(multi.getParameter("email"));
			boardvo.setTitle(multi.getParameter("title"));
			boardvo.setContent(multi.getParameter("content"));
			String file = multi.getFilesystemName("filename");
			boardvo.setImage(file);	
			ContentValidator validator = new ContentValidator();
	    	validator.validate(boardvo, result);
	    	if (result.hasErrors()) {
				if(result.getFieldError("pass")!=null)
					model.addAttribute("message", "비밀번호를 입력하세요");
				else if(result.getFieldError("email")!=null)
					model.addAttribute("message", "이메일을 입력하세요");
				else if(result.getFieldError("title")!=null)
					model.addAttribute("message", "제목을 입력하세요");
				else if(result.getFieldError("content")!=null)
					model.addAttribute("message", "내용을 입력하세요");

	    		return "board/boardWriteForm";
	    	}
		} catch (IOException e) {e.printStackTrace();		}
		bs.insertBoard(boardvo);
		return "redirect:/boardmain";
	}
	
	
	@RequestMapping("/boardWriteForm")
	public String write_form(Model model, HttpServletRequest request) {
		String url = "board/boardWriteForm";
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null)	url="member/loginForm";
		return url;
	}
	
	
	
	@RequestMapping("/boardView")
	public String board_view(Model model, HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("board", bs.readBoard( num ) );
		return "board/boardView";
	}
	
	@RequestMapping("boardmain")
	public String BugerW(Model model, HttpServletRequest request) {
		String url="board/boardmain";
		int page = 1;
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null) {	
			url="member/loginForm";
		}else {
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
			int count = bs.getAllCount();
			paging.setTotalCount(count);
			paging.paging();
			model.addAttribute("boardList",	bs.selectAll(paging) );
			model.addAttribute("paging", paging);
		}
		return url;
	}
}
