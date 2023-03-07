<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop_99z</title>

<style>

   body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
   a { color:#05f; text-decoration:none; }
  
   
   h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
   ul, lo, li { margin:0; padding:0; list-style:none; }
   
   header#header div#header_box { text-align:center; padding:30px 0; }
   header#header div#header_box h1 { font-size:50px; }
   header#header div#header_box h1 a { color:#000; }
   
   form { max-width: 1360px; margin:130px auto; padding:85px 80px; width:303px; height:130px; border: 1px solid gray; border-radius:5px;}
   from { width:800px; }
   
   text {padding:20px 130px; }
   
   input { width:280px; height:30px; font-size:13px; padding:0 10px; border:0.5px solid #1234; border-radius:3px; }
   input#memId { margin-top:15px;}
   input#memPass { margin-top:2px;}
   
   button#signin_btn {width:302px; height:30px; margin-top:10px; background-color: white; border: 1px solid black; border-radius:5px;}
   button#signin_btn:hover {background-color: black; color:white; }
   
   button#signup_btn { margin-top:2px; background-color: white; border: 1px solid gray; border-radius:5px; }
   button#signup_btn:hover {background-color: gray; }
   
   nav#nav div#nav_box li { width:289px; height:25px; margin-top:2px; }
   nav#nav div#nav_box li a {color:black; }
   nav#nav div#nav_box li a:hover {color:white; }
 
   footer#footer { width:800px; }
   footer#footer { max-width: 1360px; margin: 0 auto; border-top: 1px solid black; padding: 30px 0;}
   footer#footer div#footer_box { padding:0 20px; }
   

</style>

</head>
<body>
<div id="root">
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp" %>
		</div>
	</header>



	<section id="container">
		<div id="container_box">
			
			<section id="content">
				<form role="form" method="post" autocomplete="off">
						<text>Login</text>
					<div class="input_area">
						<!--<label for="memId">아이디</label>
						 <input type="email" id="memId" name="memId" placeholder="example@email.com" required="required" />	-->
						 <input type="email" id="memId" name="memId" fw-filter="isFill" fw-label="아이디"	fw-msg class="inputTypeText" 
						 placeholder="아이디" />			
					</div>
					
					<div class="input_area">
						<!-- <label for="memPass">패스워드</label>
						<input type="password" id="memPass" name="memPass" required="required" /> -->
						<input type="password" id="memPass" name="memPass" fw-filter="isFill" fw-label="패스워드"	fw-msg class="inputTypeText" 
						 placeholder="비밀번호" />						
					</div>
					
					<button type="submit" id="signin_btn" name="signin_btn">로그인</button>
					
					
						<nav id="nav">
							<div id="nav_box">
								<button type="submit" id="signup_btn" name="signup_btn"><%@ include file="../include/nav2.jsp" %></button>
							</div>
						</nav>
					
					
					<c:if test="${msg == false}">
						<p style="color:#f00;">로그인에 실패했습니다.</p>
					</c:if>
				</form>			
			</section>
			
		</div> 
	</section>

<%-- 	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer> --%>

</div>
</body>
</html>