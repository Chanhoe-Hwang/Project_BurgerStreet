package com.ezen.burger.dto;

import java.sql.Timestamp;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class MemberVO {

	@NotEmpty(message="id를 입력하세요")
	private String id;
	@NotEmpty(message="비번을 입력하세요")
    private String pwd;    
	@NotEmpty(message="이름을 입력하세요")
    private String name;
	@NotEmpty(message="email을 입력하세요")
    private String email;
	private String zip_num;
	private String address;
	@NotEmpty(message="핸드폰 번호를 입력하세요")
	private String phone;
	private String useyn;
	private String newyn;
	private Timestamp indate;
	private String adminchk;
}
