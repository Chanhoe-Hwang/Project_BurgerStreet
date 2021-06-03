package com.ezen.burger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.IOrderDao;
import com.ezen.burger.dto.CartVO;
import com.ezen.burger.dto.OrderVO;

@Service
public class OrderService {

	@Autowired
	IOrderDao odao;
	
	
	public void insertOrder(List<CartVO> cartList, String id, String addr1, String addr2, String contactnum,
			String comments, String cashyn) {
		int oseq = 0;	
		odao.insertOrders(id);
		oseq = odao.LookupMaxOseq();
		for( CartVO cvo : cartList) {
			odao.insertOrderDetail(cvo, oseq, addr1, addr2, contactnum, comments, cashyn);
			odao.updateCart(cvo.getCseq());
		}
	}
	
	public List<OrderVO> listOrderByIdOseq(String id, String result, int oseq){
		List<OrderVO> orderList = odao.listOrderByIdOseq(id, result, oseq);
		return orderList;
	}
	
	public int LookupMaxOseq() {
		return odao.LookupMaxOseq();
	}
}
