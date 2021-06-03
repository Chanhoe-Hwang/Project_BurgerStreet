package com.ezen.burger.dto;

import java.sql.Timestamp;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class ReplyVO {

	private int num;
	private int boardnum;
	private String userid;
	private Timestamp writedate;
	@NotEmpty(message="내용을 입력하세요")
	private String content;
}
