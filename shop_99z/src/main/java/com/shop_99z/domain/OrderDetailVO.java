package com.shop_99z.domain;

public class OrderDetailVO {

/*
	create table order_details (
		orderDetailsNum		number			not null,
		orderId				varchar2(50)	not null,
		gdsNum				number			not null,
		cartStock			number			not null,
		primary key(orderDetailsNum)
	);
 */
	
	private int orderDetailsNum;
	private String orderId;
	private int gdsNum;
	private int cartStock;
	
	
	public int getOrderDetailsNum() {
		return orderDetailsNum;
	}
	public void setOrderDetailsNum(int orderDetailsNum) {
		this.orderDetailsNum = orderDetailsNum;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getCartStock() {
		return cartStock;
	}
	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}
	
	
}
