package com.shop_99z.domain;

import java.util.Date;

public class MemberVO {
/*	create table member (
		    memId varchar2(50) not null,
		    memPass varchar2(100) not null,
		    memName varchar2(30) not null,
		    memPhone varchar2(20) not null,
		    memAddr1 varchar2(20) null,
		    memAddr2 varchar2(50) null,
		    memAddr3 varchar2(50) null,
		    regDate date default sysdate,
		    verify number default 0,
		    primary key(memId)
		);
*/
	private String memId;
	private String memPass;
	private String memName;
	private String memPhone;
	private String memAddr1;
	private String memAddr2;
	private String memAddr3;
	private Date regDate;
	private int verify;

	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}

	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
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

	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
}