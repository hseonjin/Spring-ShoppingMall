package com.shop_99z.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shop_99z.domain.GoodsVO;
import com.shop_99z.persistence.HomeDAO;


@Service
public class HomeServiceImpl implements HomeService{
	
	@Inject HomeDAO dao;
	
	@Override
	public List<GoodsVO> goodslist() throws Exception {
		System.out.println("서비스");
		return dao.goodslist();
	}
}	
	