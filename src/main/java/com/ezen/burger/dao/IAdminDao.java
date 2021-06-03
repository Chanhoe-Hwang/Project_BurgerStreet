package com.ezen.burger.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.ezen.burger.dto.BoardVO;
import com.ezen.burger.dto.OrderVO;
import com.ezen.burger.dto.Paging;
import com.ezen.burger.dto.ProductVO;

@Mapper
public interface IAdminDao {

	public String workerCheck(String workId);
	public List<ProductVO> listProduct(Paging paging,  String key);
	public int getAllCount(String tableName, String fieldName, String key);
	public void updateBoard(BoardVO bvo);
	public void updateOrderResult(String odseq);
	public void updateProduct(ProductVO pvo) ;
	public void insertProduct(ProductVO pvo);
	public List<BoardVO> listBoard(Paging paging, String key);
	public List<OrderVO> listOrder(Paging paging, String key);
	
}
