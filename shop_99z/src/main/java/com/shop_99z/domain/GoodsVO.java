package com.shop_99z.domain;

import java.util.Date;

public class GoodsVO {
/*	    CREATE TABLE goods (
                gdsNum       number          not null,
                gdsName      varchar2(50)    not null,
                cateCode     varchar2(30)    not null,
                gdsPrice     number          not null,
                gdsStock     number          null,
                gdsInfo       varchar(500)    null,
                gdsImg       varchar(200)    null,
                gdsDate      date            default sysdate,
                primary key(gdsNum)  
            );
*/

    private int gdsNum;
    private String gdsName;
    private String cateCode;	
    private int gdsPrice;
    private int gdsStock;
    private String gdsInfo;
    private String gdsImg;
    private Date gdsDate;
    
    private String gdsThumbImg;

	public String getGdsThumbImg() {
		return gdsThumbImg;
	}
	public void setGdsThumbImg(String gdsThumbImg) {
		this.gdsThumbImg = gdsThumbImg;
	}

    public int getGdsNum() {
        return gdsNum;
    }
    public void setGdsNum(int gdsNum) {
        this.gdsNum = gdsNum;
    }
    public String getGdsName() {
        return gdsName;
    }
    public void setGdsName(String gdsName) {
        this.gdsName = gdsName;
    }
    public String getCateCode() {
        return cateCode;
    }
    public void setCateCode(String cateCode) {
        this.cateCode = cateCode;
    }
    public int getGdsPrice() {
        return gdsPrice;
    }
    public void setGdsPrice(int gdsPrice) {
        this.gdsPrice = gdsPrice;
    }
    public int getGdsStock() {
        return gdsStock;
    }
    public void setGdsStock(int gdsStock) {
        this.gdsStock = gdsStock;
    }
    public String getGdsInfo() {
        return gdsInfo;
    }
    public void setGdsInfo(String gdsInfo) {
        this.gdsInfo = gdsInfo;
    }
    public String getGdsImg() {
        return gdsImg;
    }
    public void setGdsImg(String gdsImg) {
        this.gdsImg = gdsImg;
    }
    public Date getGdsDate() {
        return gdsDate;
    }
    public void setGdsDate(Date gdsDate) {
        this.gdsDate = gdsDate;
    }
}