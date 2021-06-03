package com.ezen.burger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.burger.dto.CartVO;
import com.ezen.burger.dto.OrderVO;

@Mapper
public interface IOrderDao {

	
	public int insertOrders(String id);
	public int LookupMaxOseq();
	public int insertOrderDetail(CartVO cvo, int oseq, String addr1, String addr2, String contactnum, String comments, String cashyn);
	public int updateCart(int cseq);
	
	public List<OrderVO> listOrderByIdOseq(String id, String result, int oseq);
}
