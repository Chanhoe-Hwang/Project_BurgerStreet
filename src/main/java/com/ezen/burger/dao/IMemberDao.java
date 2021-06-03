package com.ezen.burger.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.burger.dto.MemberVO;

@Mapper
public interface IMemberDao {

	public MemberVO findid(String name, String phone);
	public int insertMember(MemberVO mvo);
	public MemberVO getMember(String id);
}
