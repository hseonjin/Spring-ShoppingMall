package com.shop_99z.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop_99z.domain.CartListVO;
import com.shop_99z.domain.CartVO;
import com.shop_99z.domain.GoodsViewVO;
import com.shop_99z.domain.MemberVO;
import com.shop_99z.domain.OrderDetailVO;
import com.shop_99z.domain.OrderListVO;
import com.shop_99z.domain.OrderVO;
import com.shop_99z.domain.ReplyListVO;
import com.shop_99z.domain.ReplyVO;
import com.shop_99z.service.ShopService;

@Controller
@RequestMapping("/shop/*")
public class ShopController {

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Inject
	ShopService service;

	// 카테고리별 상품 리스트
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(@RequestParam("c") int cateCode, @RequestParam("l") int level, Model model) throws Exception {
		logger.info("get llist");

		List<GoodsViewVO> list = null;
		list = service.list(cateCode, level);

		model.addAttribute("list", list);
	}

	// 상품조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("n") int gdsNum, Model model) throws Exception {
		logger.info("get view");

		GoodsViewVO view = service.goodsView(gdsNum);
		model.addAttribute("view", view);
		
		/*
		 List<ReplyListVO> reply = service.replyList(gdsNum);
		 model.addAttribute("reply", reply);
		 */
	}

	   // 상품평 작성
		/*
		 * @RequestMapping(value = "/view", method = RequestMethod.POST) 
		 * public String registReply(ReplyVO reply, HttpSession session) throws Exception {
		 * logger.info("regist reply");
		 * 
		 * MemberVO member = (MemberVO)session.getAttribute("member");
		 * reply.setMemId(member.getMemId());
		 * 
		 * service.registReply(reply);
		 * 
		 * return "redirect:/shop/view?n=" + reply.getGdsNum(); }
		 */
	   
		@ResponseBody
		@RequestMapping(value = "/view/registReply", method = RequestMethod.POST)
		public void registReply(ReplyVO reply, HttpSession session) throws Exception {
			logger.info("regist reply");
			
			MemberVO member = (MemberVO)session.getAttribute("member");
			reply.setMemId(member.getMemId());
			
			service.registReply(reply);
		}
	 
	 // 상품평 리스트
	 @ResponseBody
	 @RequestMapping(value = "/view/replyList", method = RequestMethod.GET)
	 public List<ReplyListVO> getReplyList(@RequestParam("n") int gdsNum) throws Exception {
		 logger.info("get reply list");
					
		 List<ReplyListVO> reply = service.replyList(gdsNum);
			
		 return reply;
		}
	 
	// 상품평 삭제
	 @ResponseBody
	 @RequestMapping(value = "/view/deleteReply", method = RequestMethod.POST)
	 public int getReplyList(ReplyVO reply,  HttpSession session) throws Exception {
	    logger.info("post delete reply");

	    int result = 0;
	    
	    MemberVO member = (MemberVO)session.getAttribute("member");
	    String memId = service.idCheck(reply.getRepNum());
	      
	    if(member.getMemId().equals(memId)) {
	     
	     reply.setMemId(member.getMemId());
	     service.deleteReply(reply);
	     
	     result = 1;
	    }
	    
	    return result;   
	 }
	 
	// 상품평 수정
	@ResponseBody
	@RequestMapping(value = "/view/modifyReply", method = RequestMethod.POST)
	public int modifyReply(ReplyVO reply, HttpSession session) throws Exception {
		logger.info("modefy reply");
		
		int result = 0;
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String memId = service.idCheck(reply.getRepNum());
		
		if(member.getMemId().equals(memId)) {
			
			reply.setMemId(member.getMemId());
			service.modifyReply(reply);
			result = 1;
		}
		return result;
	}
	
	// 장바구니 담기
	@ResponseBody
	@RequestMapping(value = "/view/addCart", method = RequestMethod.POST)
	public int addCart(CartVO cart, HttpSession session) throws Exception {
	   
	   int result = 0;
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   
	   if(member != null) {
	    cart.setMemId(member.getMemId());
	    service.addCart(cart);
	    result = 1;
	   }
	   
	   return result;
	}
	
	// 장바구니 리스트
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public void getCartList(HttpSession session, Model model) throws Exception {
	   logger.info("get cart list");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   String memId = member.getMemId();
	   
	   List<CartListVO> cartList = service.cartList(memId);
	   
	   model.addAttribute("cartList", cartList);
	}
	
	// 장바구니 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public int deleteCart(HttpSession session, 
						@RequestParam(value = "chbox[]") List<String> chArr, CartVO cart) throws Exception {
		logger.info("delete cart");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String memId = member.getMemId();
		
		int result = 0;
		int cartNum = 0;
		
		if(member != null) {
			cart.setMemId(memId);
			
			for(String i : chArr) {
				cartNum = Integer.parseInt(i);
				cart.setCartNum(cartNum);
				service.deleteCart(cart);
			}
			result = 1;
		}
		return result;
	}
	
	// 주문
	@RequestMapping(value = "/cartList", method = RequestMethod.POST)
	public String order(HttpSession session, OrderVO order, OrderDetailVO orderDetail) throws Exception {
	   logger.info("order");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");    
	   String memId = member.getMemId();
	   
	   Calendar cal = Calendar.getInstance();
	   int year = cal.get(Calendar.YEAR);
	   String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
	   String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
	   String subNum = "";
	   
	   for(int i = 1; i <= 6; i ++) {
	    subNum += (int)(Math.random() * 10);
	   }
	   
	   String orderId = ymd + "_" + subNum;
	   
	   order.setOrderId(orderId);
	   order.setMemId(memId);
	    
	   service.orderInfo(order);
	   
	   orderDetail.setOrderId(orderId);     
	   service.orderInfo_Details(orderDetail);
	   
	   service.cartAllDelete(memId);
	   
	   return "redirect:/shop/orderList";    
	}
	
	// 주문 목록
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public void getOrderList(HttpSession session, OrderVO order, Model model) throws Exception {
	   logger.info("get order list");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   String memId = member.getMemId();
	   
	   order.setMemId(memId);
	   
	   List<OrderVO> orderList = service.orderList(order);
	   
	   model.addAttribute("orderList", orderList);
	}
	
	// 주문 상세 목록
	@RequestMapping(value = "/orderView", method = RequestMethod.GET)
	public void getOrderList(HttpSession session,
	        @RequestParam("n") String orderId,
	        OrderVO order, Model model) throws Exception {
	   logger.info("get order view");
	   
	   MemberVO member = (MemberVO)session.getAttribute("member");
	   String memId = member.getMemId();
	   
	   order.setMemId(memId);
	   order.setOrderId(orderId);
	   
	   List<OrderListVO> orderView = service.orderView(order);
	   
	   model.addAttribute("orderView", orderView);
	}
	
	
}
	 