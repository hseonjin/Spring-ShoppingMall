package com.shop_99z.domain;

public class CategoryVO {

/*
	CREATE table goods_category (
	    cateName     varchar2(20)    not null,
	    cateCode     varchar2(30)    not null,
	    cateCodeRef  varchar2(30)    null,)
	);
 */
	
	private String cateName;
	private String cateCode;
	private String cateCodeRef;
	private int level;
	
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	public String getcateName() {
		return cateName;
	}
	public void setcateName(String cateName) {
		this.cateName = cateName;
	}
	
	public String getcateCode() {
		return cateCode;
	}
	public void setcateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	
	public String getcateCodeRef() {
		return cateCodeRef;
	}
	public void setcateCodeRef(String cateCodeRef) {
		this.cateCodeRef = cateCodeRef;
	}
	
}
