package com.ezen.burger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.burger.dto.CartVO;

@Mapper
public interface ICartDao {

	public void updateQuantity(String id, String quantity, String cseq);
	public void deleteCart(int cseq);
	public int getCountCart(String id);
	public List<CartVO> listCart(String id);
	public void insertCart(CartVO cvo);
}
