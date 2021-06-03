package com.ezen.burger.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.IMemberDao;
import com.ezen.burger.dto.MemberVO;

@Service
public class MemberService {

	@Autowired
	IMemberDao mdao;
	
	public MemberVO findid(String name, String phone) {	
		return mdao.findid(name, phone);				
	}
	
	public MemberVO getMember(String id) {
		System.out.print("2");
		return mdao.getMember(id);
	}
	
	public int insertMember(MemberVO mvo) {
		return mdao.insertMember(mvo);
	}
	
	
}
