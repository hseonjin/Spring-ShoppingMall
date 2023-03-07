package com.shop_99z.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.shop_99z.domain.CategoryVO;
import com.shop_99z.domain.GoodsVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;
import com.shop_99z.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Inject AdminDAO dao;
	
	// Category
	@Override
	public List<CategoryVO> category() throws Exception {
		return dao.category();
	}

	// 상품등록
	@Override
	public void register(GoodsVO vo) throws Exception {
		dao.register(vo);
	}
	
	// 상품목록
	@Override
	public List<GoodsViewVO> goodslist() throws Exception {
		System.out.println("서비스");
		return dao.goodslist();
	}
	
	// 상품조회 + 카테고리 조인
	@Override
	public GoodsViewVO goodsView(int gdsNum) throws Exception {
		return dao.goodsView(gdsNum);
	}
	
	// 상품수정
	@Override
	public void goodsModify(GoodsVO vo) throws Exception {
		dao.goodsModify(vo);
	}
	
	// 상품삭제
	@Override
	public void goodsDelete(int gdsNum) throws Exception {
		dao.goodsDelete(gdsNum);
	}
	
	// 주문목록
	@Override
	public List<OrderVO> orderList() throws Exception {
		return dao.orderList();
	}
	
	// 특정 주문목록
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return dao.orderView(order);
	}
	
	// 배송상태
	@Override
	public void delivery(OrderVO order) throws Exception {
		dao.delivery(order);
	}
	
	// 상품 수량 조절
	@Override
	public void changeStock(GoodsVO goods) throws Exception {
		dao.changeStock(goods);
	}
	
	
	// 상품평 관리
	@Override
	public List<ReplyListVO> allReply() throws Exception {
		return dao.allReply();
	}
	
	// 상품평 삭제
	@Override
	public void deleteReply(int repNum) throws Exception {
		dao.deleteReply(repNum);
	}
}
