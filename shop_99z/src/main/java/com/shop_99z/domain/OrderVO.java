package com.shop_99z.domain;

import java.util.Date;

public class OrderVO {

/*
	create table ordering (
			orderId		varchar2(50) not null,
			memId		varchar2(50) not null,
			orderRec	varchar2(50) not null,
			memAddr1	varchar2(20) not null,
			memAddr2	varchar2(50) not null,
			memAddr3	varchar2(50) not null,
			orderPhone	varchar2(30) not null,
			amount		number		 not null,
			orderDate 	Date		 default sysdate,
			primary key(orderId)
		);
*/
	
	private String orderId;
	private String memId;
	private String orderRec;
	private String memAddr1;
	private String memAddr2;
	private String memAddr3;
	private String orderPhone;
	private int amount;
	private Date orderDate;
	
	private String delivery;
	
	
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getOrderRec() {
		return orderRec;
	}
	public void setOrderRec(String orderRec) {
		this.orderRec = orderRec;
	}
	public String getMemAddr1() {
		return memAddr1;
	}
	public void setMemAddr1(String memAddr1) {
		this.memAddr1 = memAddr1;
	}
	public String getMemAddr2() {
		return memAddr2;
	}
	public void setMemAddr2(String memAddr2) {
		this.memAddr2 = memAddr2;
	}
	public String getMemAddr3() {
		return memAddr3;
	}
	public void setMemAddr3(String memAddr3) {
		this.memAddr3 = memAddr3;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	
}
