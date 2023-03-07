<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul>
<!-- 로그인 하지 않은 경우 -->
<c:if test="${member == null}">
   <li>
    <a href="/member/signup">회원가입</a>
   </li>
</c:if>

<!-- 로그인 한 경우 -->
<c:if test="${member != null}">
	<!-- 일반 사용자인 경우 -->
   <li>
    ${member.memName}님 환영합니다.
   </li>

   	<!-- 관리자인 경우 -->
	<c:if test="${member.verify == 9}">
	<li>
		<a href="/admin/index">관리자 화면</a>
	</li>
	</c:if>
	
	<li>
		<a href="/shop/cartList">장바구니</a>
	</li>
	
	<li>
		<a href="/shop/orderList">주문내역</a>
	</li>
	
   <li>
    	<a href="/member/signout">로그아웃</a>
   </li>
</c:if>
</ul>