package com.shop_99z.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;

import com.shop_99z.domain.MemberVO;
import com.shop_99z.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	// 회원 가입
	@Override 
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);		
	}
	
	// 로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		return dao.signin(vo);
	}

	// 로그아웃
	@Override
	public void signout(HttpSession session) throws Exception {
		session.invalidate();  // 세션 정보 제거
	}
} 
