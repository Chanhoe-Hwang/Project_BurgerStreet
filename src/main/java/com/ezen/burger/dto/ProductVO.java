package com.ezen.burger.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ProductVO {

	
	private Integer pseq;
    private String name;
    private String kind;   
    private Integer price;
    private String content;
    private String image;
    private String image_detail;
    private String useyn;
    private String bestyn;
    private Timestamp indate;
}
