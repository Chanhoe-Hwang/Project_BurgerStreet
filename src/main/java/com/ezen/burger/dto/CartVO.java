package com.ezen.burger.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CartVO {
	private Integer cseq;
	private String id;  
	private Integer pseq;  
	private String mname;
	private String pname;
	private Integer quantity;
	private Integer price;
	private String result;
	private Timestamp indate;
	private String content;
	private String image;
	private int cartcnt;
	
	
}
