package com.ezen.burger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.IAdminDao;
import com.ezen.burger.dto.BoardVO;
import com.ezen.burger.dto.OrderVO;
import com.ezen.burger.dto.Paging;
import com.ezen.burger.dto.ProductVO;

@Service
public class AdminService {

	@Autowired
	IAdminDao adao;
	
	
	public void updateBoard(BoardVO bvo) {
		adao.updateBoard(bvo);
	}
	
	public void updateOrderResult(String odseq) {
		adao.updateOrderResult(odseq);
	}
	
	public void updateProduct(ProductVO pvo) {
		adao.updateProduct(pvo);
	}
	
	public void insertProduct(ProductVO pvo) {
		adao.insertProduct(pvo);
	}
	
	public List<BoardVO> listBoard(Paging paging, String key){
		List<BoardVO> list = adao.listBoard(paging, key);
		return list;
	}
	
	
	public List<ProductVO> listProduct(Paging paging, String key){
		List<ProductVO> list = adao.listProduct(paging, key);
		return list;
	}
	
	public List<OrderVO> listOrder(Paging paging, String key){
		List<OrderVO> list = adao.listOrder(paging, key);
		return list;
	}
	
	
	public int getAllCount(String tableName, String fieldName, String key) {
		return adao.getAllCount(tableName, fieldName, key);
	}
	
}
