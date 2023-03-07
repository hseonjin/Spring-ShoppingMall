package com.shop_99z.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop_99z.domain.GoodsVO;

@Repository
public class HomeDAOImpl implements HomeDAO{
	
	@Inject
	private SqlSession sql;
	
	// 매퍼 
	private static String namespace = "com.shop_99z.mappers.homeMapper";

	@Override
	public List<GoodsVO> goodslist() throws Exception {
		return sql.selectList(namespace + ".goodslist");
	}
}
