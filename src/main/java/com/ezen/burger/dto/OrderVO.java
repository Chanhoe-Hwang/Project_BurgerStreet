package com.ezen.burger.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class OrderVO {
	private int odseq;
	private int oseq;
	private String id; 
	private Timestamp indate;
	private String mname;
	private String zipnum;
	private String address;
	private String phone;  
	private int pseq;
	private String pname;
	private int quantity;
	private int price;  
	private String result;
	private String addr1;
	private String addr2;
	private String contactnum;
	private String comments;
	private String cashyn;
		
		
}
