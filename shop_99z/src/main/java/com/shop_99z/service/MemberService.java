package com.shop_99z.service;

import com.shop_99z.domain.MemberVO;
import javax.servlet.http.HttpSession;

public interface MemberService {
	
	// 회원 가입
	public void signup(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;

	// 로그아웃
	public void signout(HttpSession session) throws Exception;
}
