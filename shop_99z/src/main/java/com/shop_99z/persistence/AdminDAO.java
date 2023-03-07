package com.shop_99z.persistence;

import java.util.List;

import com.shop_99z.domain.CategoryVO;
import com.shop_99z.domain.GoodsVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;

public interface AdminDAO {

	// Category
	public List<CategoryVO> category() throws Exception;
	
	// 상품등록
	public void register(GoodsVO vo) throws Exception;
	
	// 상품목록
	public List<GoodsViewVO> goodslist() throws Exception;
	
	// 상품조회 + 카테고리 조인
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	// 상품수정
	public void goodsModify(GoodsVO vo) throws Exception;
	
	// 상품삭제
	public void goodsDelete(int gdsNum) throws Exception;
	
	// 주문목록
	public List<OrderVO> orderList() throws Exception;
	
	// 특정 주문목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	// 배송상태
	public void delivery(OrderVO order) throws Exception;
	
	// 상품 수량 조절
	public void changeStock(GoodsVO goods) throws Exception;
	
	// 상품평 관리
	public List<ReplyListVO> allReply() throws Exception;
	
	// 상품평 삭제
	public void deleteReply(int repNum) throws Exception;
}

