package com.shop_99z.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop_99z.domain.GoodsVO;
import com.shop_99z.service.AdminService;
import com.shop_99z.service.HomeService;



@Controller
//@RequestMapping("/home")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	HomeService homeService;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getGoodsList(Model model) throws Exception {
		logger.info("get goods list");
		
		List<GoodsVO> list = homeService.goodslist();
		model.addAttribute("list", list);
		
		return "home";
	}

}
