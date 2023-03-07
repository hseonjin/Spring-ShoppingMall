package com.shop_99z.persistence;

import java.util.List;

import com.shop_99z.domain.GoodsVO;

public interface HomeDAO {
	public List<GoodsVO> goodslist() throws Exception;
}
