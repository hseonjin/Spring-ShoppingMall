package com.shop_99z.domain;

import java.util.Date;

public class ReplyVO {

	/*
	 create table reply ( 
		 gdsNum 	number 			not null, 
		 memId 		varchar2(50) 	not null,
		 repNum 	number 			not null, 
		 repCon 	varchar2(2000) 	not null, 
		 repDate 	date default sysdate, 
		 primary key(gdsNum, repNum) );
	 */
	
	private int gdsNum;
	private String memId;
	private int repNum;
	private String repCon;
	private Date repDate;
	
	
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getRepNum() {
		return repNum;
	}
	public void setRepNum(int repNum) {
		this.repNum = repNum;
	}
	public String getRepCon() {
		return repCon;
	}
	public void setRepCon(String repCon) {
		this.repCon = repCon;
	}
	public Date getRepDate() {
		return repDate;
	}
	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}
}
