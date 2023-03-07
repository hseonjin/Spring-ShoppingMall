package com.shop_99z.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop_99z.domain.CartListVO;
import com.shop_99z.domain.CartVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.OrderDetailVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;
import com.shop_99z.domain.ReplyVO;

@Repository
public class ShopDAOImpl implements ShopDAO {
	
	@Inject
	private SqlSession sql;
	
	// 매퍼
	private static String namespace = "com.shop_99z.mappers.shopMapper";
	
	// 카테고리별 상품 리스트 (1차)
	@Override
	public List<GoodsViewVO> list(int cateCode, int cateCodeRef) throws Exception {

		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("cateCode",  cateCode);
		map.put("cateCodeRef", cateCodeRef);
		
		return sql.selectList(namespace + ".list_1", map);
	}

	// 카테고리별 상품 리스트 (2차)
	@Override
	public List<GoodsViewVO> list(int cateCode) throws Exception {

		return sql.selectList(namespace + ".list_2", cateCode);
	}
	
	// 상품조회
	@Override 
	public GoodsViewVO goodsView(int gdsNum) throws Exception {
		return sql.selectOne("com.shop_99z.mappers.adminMapper" + ".goodsView", gdsNum);
	}
	
	// 상품평 작성
	@Override
	public void registReply(ReplyVO reply) throws Exception {
		sql.insert(namespace + ".registReply", reply);
	}
	
	// 상품평 리스트
	@Override
	public List<ReplyListVO> replyList(int gdsNum) throws Exception {
		return sql.selectList(namespace + ".replyList", gdsNum);
	}
	// 상품평 삭제
	@Override
	public void deleteReply(ReplyVO reply) throws Exception {
		sql.delete(namespace + ".deleteReply", reply);
	}
	
	// 아이디체크
	@Override
	public String idCheck(int repNum) throws Exception {
		return sql.selectOne(namespace + ".replyMemIdCheck", repNum);
	}
	
	// 상품평 수정
	@Override
	public void modifyReply(ReplyVO reply) throws Exception {
		sql.update(namespace + ".modifyReply", reply);
	}
	
	// 장바구니 담기
	@Override
	public void addCart(CartVO cart) throws Exception {
		sql.insert(namespace + ".addCart", cart);
	}
	
	// 장바구니 리스트
	@Override
	public List<CartListVO> cartList(String memId) throws Exception {
		return sql.selectList(namespace + ".cartList", memId);
	}
	
	// 장바구니 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		sql.delete(namespace + ".deleteCart", cart);
	}
	
	// 주문 정보
	@Override
	public void orderInfo(OrderVO order) throws Exception {
		sql.insert(namespace + ".orderInfo", order);
	}
	
	// 주문 상세 정보
	@Override
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception {
		sql.insert(namespace + ".orderInfo_Details", orderDetail);
	}
	
	// 장바구니 비우기
	@Override
	public void cartAllDelete(String memId) throws Exception {
		sql.delete(namespace + ".cartAllDelete", memId);
	}
	
	// 주문 목록
	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderList", order);
	}

	// 특정 주문 목록
	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return sql.selectList(namespace + ".orderView", order);
	}
}
