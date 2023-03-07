package com.shop_99z.persistence;

import com.shop_99z.domain.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void signup(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO signin(MemberVO vo) throws Exception;
}
