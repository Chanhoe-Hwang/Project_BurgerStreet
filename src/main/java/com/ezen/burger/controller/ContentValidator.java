package com.ezen.burger.controller;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ezen.burger.dto.BoardVO;

public class ContentValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {		return false;  	}

	@Override
	public void validate(Object target, Errors errors) {
		BoardVO dto = (BoardVO)target;
		
		if(dto.getPass()==null || dto.getPass().trim().isEmpty())
			errors.rejectValue("pass", "비밀번호를 입력하세요");
		if(dto.getEmail()==null || dto.getEmail().trim().isEmpty())
			errors.rejectValue("email", "이메일을 입력하세요");
		if(dto.getTitle()==null || dto.getTitle().trim().isEmpty())
			errors.rejectValue("title", "제목을 입력하세요");
		if(dto.getContent()==null || dto.getContent().trim().isEmpty())
			errors.rejectValue("content", "내용을 입력하세요");
		
	}

}
