package com.ezen.burger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.ICartDao;
import com.ezen.burger.dto.CartVO;

@Service
public class CartService {

	@Autowired
	ICartDao cdao;
	
	public void updateQuantity(String id, String quantity, String cseq) {
		cdao.updateQuantity(id, quantity, cseq);
	}
	
	public void deleteCart(int cseq){
		cdao.deleteCart(cseq);
	}
	
	public int getCountCart(String id) {
		
		int count = 0; 
		count =	cdao.getCountCart(id);
		
		return count;
	}
	
	public List<CartVO> listCart(String id){
		List<CartVO> list = cdao.listCart(id);		
		return list;
	}
	
	public void insertCart(CartVO cvo) {
		cdao.insertCart(cvo);
	}
}
