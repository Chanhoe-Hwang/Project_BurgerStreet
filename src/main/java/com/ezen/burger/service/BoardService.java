package com.ezen.burger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.burger.dao.IBoardDao;
import com.ezen.burger.dto.BoardVO;
import com.ezen.burger.dto.Paging;

@Service
public class BoardService {
	
	@Autowired
	IBoardDao bdao;
	
	
	public BoardVO getboard(int num) {
		BoardVO bvo = bdao.getBoard(num);
		return bvo;
	}
	
	public void insertBoard(BoardVO boardvo) {
		bdao.insertBoard(boardvo);
	}
	
	public BoardVO readBoard( int num ){ 
		return bdao.getBoard(num);
	}
	
	public int getAllCount() {
		return bdao.getAllCount();
	}
	
	
	public List<BoardVO> selectAll(Paging paging){
		List<BoardVO> list = bdao.selectAll(paging);
		return list;
	}
}
