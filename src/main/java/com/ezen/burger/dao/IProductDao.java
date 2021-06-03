package com.ezen.burger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.burger.dto.ProductVO;

@Mapper
public interface IProductDao {

	
	public List<ProductVO> getKindList(String kind);
	public ProductVO getProduct(String pseq); 
	
	
}
