package com.shop_99z.service;

import java.util.List;

import com.shop_99z.domain.CartListVO;
import com.shop_99z.domain.CartVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.OrderDetailVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;
import com.shop_99z.domain.ReplyVO;

public interface ShopService {

	// 카테고리별 상품 리스트
	public List<GoodsViewVO> list(int cateCode, int level) throws Exception;

	// 상품조회
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	// 상품평 작성
	public void registReply(ReplyVO reply) throws Exception;
	
	// 상품평 리스트
	public List<ReplyListVO> replyList(int gdsNum) throws Exception;

	// 상품평 삭제
	public void deleteReply(ReplyVO reply) throws Exception;
	
	// 아이디체크
	public String idCheck(int repNum) throws Exception;
	
	// 상품평 수정
	public void modifyReply(ReplyVO reply) throws Exception;
	
	// 장바구니 담기
	public void addCart(CartVO cart) throws Exception;
	
	// 장바구니 리스트
	public List<CartListVO> cartList(String memId) throws Exception;
	
	// 장바구니 삭제
	public void deleteCart(CartVO cart) throws Exception;
	
	// 주문 정보
	public void orderInfo(OrderVO order) throws Exception;
	
	// 주문 상세 정보
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception;

	// 장바구니 비우기
	public void cartAllDelete(String memId) throws Exception;
	
	// 주문 목록
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	// 특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	

}
