package com.ezen.burger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.IProductDao;
import com.ezen.burger.dto.ProductVO;

@Service
public class ProductService {

	@Autowired
	IProductDao pdao;
	
	public ProductVO getProduct(String pseq) {
		return pdao.getProduct(pseq);
	}
	
	public List<ProductVO> getKindList(String kind){
		List<ProductVO> list = pdao.getKindList(kind);
		return list;
	}
}
