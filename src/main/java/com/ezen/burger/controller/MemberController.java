package com.ezen.burger.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.burger.dto.MemberVO;
import com.ezen.burger.service.CartService;
import com.ezen.burger.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService ms;
	CartService cs;
		
	
	@RequestMapping("nonmemberorder") // *
	public String nonmember_order(Model model, HttpServletRequest request) {
		return "member/nonmemberorder";
	}

		
	@RequestMapping(value="/lookupId", method=RequestMethod.POST)
	public String lookupId(Model model, HttpServletRequest request, 
			@RequestParam("name") String name, @RequestParam("phone") String phone) {
		
		MemberVO mvo = ms.findid(name, phone);
						
		if( mvo == null ) {			
			model.addAttribute("msg", "이름과 번화번호가 일치하는 회원이 없습니다");
			model.addAttribute("name", name);
			model.addAttribute("phone", phone);
			return "member/findId";
			
		}
			
		model.addAttribute("member", mvo);
		
		return "member/completeIdPw";
	}
	
	
	@RequestMapping("findId") 
	public String find_Id(Model model, HttpServletRequest request) {
		return "member/findId";
	}
	
	@RequestMapping("logOut")
	public String logout(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginUser");
		return "member/loginForm";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("dto") @Valid MemberVO membervo,
			BindingResult result, Model model, HttpServletRequest request) {
		System.out.print("1");
		if(result.getFieldError("id")!=null) {
				System.out.print("2");
				model.addAttribute("message", result.getFieldError("id").getDefaultMessage());
				return "member/loginForm";
			}else if(result.getFieldError("pwd")!=null){
				System.out.print("3");
				model.addAttribute("message", result.getFieldError("pwd").getDefaultMessage());
				return "member/loginForm";
			}		
			
			MemberVO mvo = ms.getMember(membervo.getId());
			if( mvo!=null) {
				
				if(mvo.getPwd()!=null) {
					if(mvo.getPwd().equals(membervo.getPwd())) {
						HttpSession session = request.getSession();
						session.setAttribute("loginUser", mvo);			
						if(mvo.getAdminchk().equals("y")) {
							return "redirect:adminLogin";
						}
						return "redirect:Detail1";
					}else {
						model.addAttribute("message", "비번을 확인하세요");
						return "member/loginForm";
					}
				}else {
					model.addAttribute("message", "비밀번호 오류. 관리자에게 문의하세요");
					return "member/loginForm";
				}
		}else {
			model.addAttribute("message", "ID가 없습니다");
			return "member/loginForm";
		}
	}
	
	@RequestMapping(value = "memberJoin", method=RequestMethod.POST)
	public String memberJoin(Model model, @ModelAttribute("dto") @Valid MemberVO membervo,
			BindingResult result, HttpServletRequest request ) {
		
		if(result.getFieldError("id")!=null) {
			model.addAttribute("message", result.getFieldError("id").getDefaultMessage());
			model.addAttribute("reid",request.getParameter("reid"));
			return "member/memberJoinForm";		
		}else if(result.getFieldError("name")!=null){
			model.addAttribute("message", result.getFieldError("name").getDefaultMessage());
			model.addAttribute("reid",request.getParameter("reid"));
			return "member/memberJoinForm";
		}else if(result.getFieldError("phone")!=null){
			model.addAttribute("message", result.getFieldError("phone").getDefaultMessage());
			model.addAttribute("reid",request.getParameter("reid"));
			return "member/memberJoinForm";	
		}else if(result.getFieldError("email")!=null){
			model.addAttribute("message", result.getFieldError("email").getDefaultMessage());
			model.addAttribute("reid",request.getParameter("reid"));
			return "member/memberJoinForm";
		}else if(result.getFieldError("pwd")!=null){
			model.addAttribute("message", result.getFieldError("pwd").getDefaultMessage());
			model.addAttribute("reid",request.getParameter("reid"));
			return "member/memberJoinForm";	
		}else if(!request.getParameter("pwdCheck").equals(membervo.getPwd())){
			model.addAttribute("message", "비밀번호 확인이 일치하지 않습니다.");
			return "member/memberJoinForm";
		}
		
		ms.insertMember(membervo);
		
		return "member/loginForm";
	}
	
	
	@RequestMapping("memberJoinForm")
	public String memberJoinForm(Model model, HttpServletRequest request) {
	return "member/memberJoinForm";
	}
	
	@RequestMapping("contract")
	public String contract(Model model, HttpServletRequest request) {
		return "member/contract";
	}
	
	@RequestMapping("joinForm")
	public String join_form(Model model, HttpServletRequest request) {
		return "member/joinForm";
	}
	
	@RequestMapping("loginForm")
	public String login_form(Model model, HttpServletRequest request) {
		return "member/loginForm";
	}
	
	@RequestMapping("/")
	public String control(Model model) {
		String url="main";	
		
		return url;
	}
	
}
