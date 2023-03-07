package com.shop_99z.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shop_99z.persistence.ShopDAO;
import com.shop_99z.domain.CartListVO;
import com.shop_99z.domain.CartVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.OrderDetailVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;
import com.shop_99z.domain.ReplyVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Inject
	private ShopDAO dao;

	// 카테고리별 상품 리스트
	@Override
	public List<GoodsViewVO> list(int cateCode, int level) throws Exception {
		
		int cateCodeRef = 0;
		
		if(level == 1) {
			
			cateCodeRef = cateCode;
			return dao.list(cateCode, cateCodeRef);
			
		} else {
			
			return dao.list(cateCode);
		}
	}
	
	// 상품조회
	@Override
	public GoodsViewVO goodsView(int gdsNum) throws Exception {
		return dao.goodsView(gdsNum);
	}
	
	// 상품평 작성
	@Override
	public void registReply(ReplyVO reply) throws Exception {
		dao.registReply(reply);
	}
	
	// 상품평 리스트
	@Override
	public List<ReplyListVO> replyList(int gdsNum) throws Exception {
		return dao.replyList(gdsNum);
	}

	// 상품평 삭제
	@Override
	public void deleteReply(ReplyVO reply) throws Exception {
		dao.deleteReply(reply);;
	}
	
	// 아이디체크
	@Override
	public String idCheck(int repNum) throws Exception {
		return dao.idCheck(repNum);
	}
	
	// 상품평 수정
	@Override
	public void modifyReply(ReplyVO reply) throws Exception {
		dao.modifyReply(reply);
	}
	
	// 장바구니 담기
	@Override
	public void addCart(CartVO cart) throws Exception {
		dao.addCart(cart);
	}
	
	// 장바구니 리스트
	@Override
	public List<CartListVO> cartList(String memId) throws Exception {
		return dao.cartList(memId);
	}
	
	// 장바구니 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		dao.deleteCart(cart);
	}
	
	// 주문 정보
	@Override
	public void orderInfo(OrderVO order) throws Exception {
		dao.orderInfo(order);
	}
	
	// 주문 상세 정보
	@Override
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception {
		dao.orderInfo_Details(orderDetail);
	}
	
	// 장바구니 비우기
	@Override
	public void cartAllDelete(String memId) throws Exception {
		dao.cartAllDelete(memId);
	}
	
	// 주문 목록
	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return dao.orderList(order);
	}
	
	// 특정 주문 목록
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return dao.orderView(order);
	}
}