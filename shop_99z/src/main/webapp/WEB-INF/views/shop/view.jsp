<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>Shop_99z</title>	

<%-- <style>
	   body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
	   a { color:#05f; text-decoration:none; }
	   a:hover { text-decoration:underline; }
	   
	   h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
	   ul, lo, li { margin:0; padding:0; list-style:none; }
	
	   /* ---------- */
	   
	   div#root { width:900px; margin:0 auto; }
	   header#header { }
	   nav#nav { }
	   section#container { }
	    section#content { float:right; width:700px; }
	    aside#aside { float:left; width:180px; }
	    section#container::after { content:""; display:block; clear:both; }   
	   footer#footer { background:#eee; padding:20px; }
	   
	   /* ---------- */
	   
	   header#header div#header_box { text-align:center; padding:30px 0; }
	   header#header div#header_box h1 { font-size:50px; }
	   header#header div#header_box h1 a { color:#000; }
	   
	   nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
	   nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
	   nav#nav div#nav_box li a { color:#333; }
	   
	   section#container { }
	   
	   aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
	   aside#aside li { font-size:16px; text-align:center; }
	   aside#aside li a { color:#000; display:block; padding:10px 0; }
	   aside#aside li a:hover { text-decoration:none; background:#eee; }
	   
	   aside#aside li { position:relative; }
		aside#aside li:hover { background:#eee; }     
		aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		aside#aside li:hover > ul.low { display:block; }
		aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		aside#aside li:hover > ul.low li a:hover { background:#fff;}
		aside#aside li > ul.low li { width:180px; }
		
	   footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
	   footer#footer div#footer_box { padding:0 20px; }
	   
	</style>
	
	<style>
	   div.goods div.goodsImg { float:left; width:350px; }
	   div.goods div.goodsImg img { width:350px; height:auto; }
	   
	   div.goods div.goodsInfo { float:right; width:330px; font-size:18px; }
	   div.goods div.goodsInfo p { margin:0 0 20px 0; }
	   div.goods div.goodsInfo p span { display:inline-block; width:100px; margin-right:15px; }
	   
	   div.goods div.goodsInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
	   div.goods div.goodsInfo p.cartStock button { font-size:26px; background:none; }
	   div.goods div.goodsInfo p.addToCart { text-align:right; }
	   div.goods div.gdsInfo { font-size:15px; clear:both; padding-top:30px; }
	</style>
		
	<style>
	   section.replyForm { padding:30px 0; }
	   section.replyForm div.input_area { margin:10px 0; }
	   section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
	   section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
	   
	   section.replyList { padding:30px 0; }
	   section.replyList ol { padding:0; margin:0; }
	   section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
	   section.replyList div.memInfo { }
	   section.replyList div.memInfo .memName { font-size:24px; font-weight:bold; }
	   section.replyList div.memInfo .date { color:#999; display:inline-block; margin-left:10px; }
	   section.replyList div.replyContent { padding:10px; margin:20px 0; }
	   section.replyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; }
	</style>	
	
	<style>
	   div.replyModal { position:relative; z-index:1; display:none; }
	   div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
	   div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
	   div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
	   div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
	   div.modalContent button.modal_cancel { margin-left:20px; }
	</style>
		
	<script src="/resources/jquery/jquery-3.6.1.min.js"></script>


</head>
<body>

<div id="root">
 	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp" %>
		</div>
	</header>

	<nav id="nav">
		<div id="nav_box">
			<%@ include file="../include/nav.jsp" %>
		</div>
	</nav> 
	
	<section id="container">
		<div id="container_box">
		
			<section id="content">
			
				<form role="form" method="post">
					<input type="hidden" name="gdsNum" value="${view.gdsNum}" />
				</form>
				
				<div class="goods">
					<div class="goodsImg">
						<img src="${view.gdsImg}">
					</div>
					
					<div class="goodsInfo">
						<p class="gdsName"><span>상품명 : </span>${view.gdsName}</p>
						<p class="cateName"><span>카테고리 : </span>${view.cateName}</p>
						<p class="gdsPrice"><span>가격 : </span><fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" />원</p>
						<p class="gdsStock"><span>재고 : </span><fmt:formatNumber pattern="###,###,###" value="${view.gdsStock}" />EA</p>
						
						<c:if test="${view.gdsStock != 0}">
						
						<p class="cartStock">
						   <span>구입 수량</span>
						   <button type="button" class="minus">-</button>
						   <input type="number" class="numBox" min="1" max="${view.gdsStock}" value="1" readonly="readonly"/>
						   <button type="button" class="plus">+</button>
						   
							   <script>
								    $(".plus").click(function(){
								     var num = $(".numBox").val();
								     var plusNum = Number(num) + 1;
								     
								     if(plusNum > ${view.gdsStock}) {
								      $(".numBox").val(num);
								     } else {
								      $(".numBox").val(plusNum);            
								     }
								    });
								    
								    $(".minus").click(function(){
								     var num = $(".numBox").val();
								     var minusNum = Number(num) - 1;
								     
								     if(minusNum <= 0) {
								      $(".numBox").val(num);
								     } else {
								      $(".numBox").val(minusNum);            
								     }
								    });
							   </script>
							   
						</p>
						<p class="addToCart">
						   <button type="button" class="addCart_btn">카트에 담기</button>
						   
						   <script>
						    $(".addCart_btn").click(function(){
						     var gdsNum = $("#gdsNum").val();
						     var cartStock = $(".numBox").val();
						        
						     var data = {
						       gdsNum : gdsNum,
						       cartStock : cartStock
						       };
						     
						     $.ajax({
						      url : "/shop/view/addCart",
						      type : "post",
						      data : data,
						      success : function(result){
						    	
							    	if(result == 1) {
									     alert("카트 담기 성공");
									     $(".numBox").val("1");
							    	} else {
							    		alert("로그인이 필요합니다.");
							    		$(".numBox").val("1");
							    	}
							    },
							    error : function(){
							     	alert("카트 담기 실패");
							    }
							   });
							  });
						   </script>
						</p>
						
						</c:if>
						
						<c:if test="${view.gdsStock == 0}">
							<p>품절된 상품입니다.</p>
						</c:if>
						
					</div>
					
					<div class="gdsInfo">${view.gdsInfo}</div>
				</div>
				
				<div id="reply">
					
					<c:if test="${member == null}">
						<p>상품평을 남기시려면 <a href="/member/signin">로그인</a>해주세요</p>
					</c:if>
					
					<c:if test="${member != null}">
					<section class="replyForm">
						<form role="form" method="post" autocomplete="off">
						
							<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}">
						
							<div class="input_area">
								<textarea name="repCon" id="repCon"></textarea>
							</div>
							
							<div class="input_area">
								<button type="button" id="reply_btn">상품평 작성</button>
								
								<script>
									$("#reply_btn").click(function(){
										
										var formObj = $(".replyForm form[role='form']");
										var gdsNum = $("#gdsNum").val();
										var repCon = $("#repCon").val();
										
										// ReplyVO 형태로 데이터 생성
										var data = {
												gdsNum : gdsNum,
												repCon : repCon
												};
										
										$.ajax({
											url : "/shop/view/registReply",
											type : "post",
											data : data,
											success : function(){
												replyList();  // 리스트 새로고침
												$("#repCon").val("");  // 텍스트에어리어를 초기화
											}
										});
									});
								</script>
								
							</div>
						</form>
					</section>
					</c:if>
					
					<section class="replyList">
						<ol>
							<c:forEach items="${reply}" var="reply">
							<li>
								<div class="memInfo">
								<span class="memName">${reply.memName}</span>
								<span class="date"><fmt:formatDate value="${reply.repDate}" pattern="yyyy-MM-dd" /></span>
								</div>
								<div class="replyContent">${reply.repCon}</div>
							</li>
							</c:forEach>
						</ol>
						
						<script>
							function replyList() {
							   var gdsNum = ${view.gdsNum};
							   $.getJSON("/shop/view/replyList" + "?n=" + gdsNum, function(data){
							    var str = "";
							    
							    $(data).each(function(){
							     
							     console.log(data);
							     
							     var repDate = new Date(this.repDate);
							     repDate = repDate.toLocaleDateString("ko-US")
							     
							     str += "<li data-repNum='" + this.repNum + "'>"
							       + "<div class='memInfo'>"
							       + "<span class='memName'>" + this.memName + " "
							       + "<span class='date'>" + repDate + " "
							       + "</div>"
							       + "<div class='replyContent'>" + this.repCon + "</div>"
							       
							       + "<c:if test='${member != null}'>"
							       
							       + "<div class='replyFooter'>"
							       + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>수정</button>"
							       + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>삭제</button>"
							       + "</div>"
							       
							       + "</c:if>"
							       
							       + "</li>";             
							    });
							    
							    $("section.replyList ol").html(str);
							   });
							}
						</script>
						
						<script>
							$(document).on("click", ".modify", function(){
							   /* $(".replyModal").attr("style", "display:block;"); */
							   $(".replyModal").fadeIn(200);
							   
							   var repNum =$(this).attr("data-repNum");
							   var repCon = $(this).parent().parent().children(".replyContent").text();

							   $(".modal_repCon").val(repCon);
							   $(".modal_modify_btn").attr("data-repNum", repNum);
							});
						</script>
						
						<script>						 
							$(document).on("click", ".delete", function(){
								
								var deletConfirm = confirm("정말로 삭제하시겠습니까?"); 
								
								if(deletConfirm) {
								
									var data = {repNum : $(this).attr("data-repNum")}; 
									
									$.ajax({
										url : "/shop/view/deleteReply",
										type : "post",
										data : data,
										success : function(result){
											
											if(result == 1) {
												replyList(); 
											} else {
												alert("작성자 본인만 할 수 있습니다.")  							
											}
										},
										error : function(){
											alert("로그인하셔야합니다.")
										}
									});
								}
							});
						</script>

					</section>
				</div>
				
			</section>
			
			<aside id="aside">
				<%@ include file="../include/aside.jsp" %>
			</aside>
			
		</div>
	</section>

	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>

</div>

<div class="replyModal">
	<div class="modalContent">
		<div>
			<textarea class="modal_repCon" name="modal_repCon"></textarea>
		</div>
		
		<div>
			<button type="button" class="modal_modify_btn">수정</button>
			<button type="button" class="modal_cancel">취소</button>
		</div>
	</div>
	<div class="modalBackground"></div>
</div>

<script>
$(".modal_cancel").click(function(){
   /* $(".replyModal").attr("style", "display:none;"); */
   $(".replyModal").fadeOut(200);
});
</script>

<script>
$(".modal_modify_btn").click(function(){
	   var modifyConfirm = confirm("정말로 수정하시겠습니까?");
	   
	   if(modifyConfirm) {
	    var data = {
	       repNum : $(this).attr("data-repNum"),
	       repCon : $(".modal_repCon").val()
	      }; 
	    
	    $.ajax({
	     url : "/shop/view/modifyReply",
	     type : "post",
	     data : data,
	     success : function(result){
	      
	      if(result == 1) {
	       replyList();
	       $(".replyModal").fadeOut(200);
	      } else {
	       alert("작성자 본인만 수정할 수 있습니다.");         
	      }
	     },
	     error : function(){
	      alert("로그인하셔야합니다.")
	     }
	    });
	   }
	   
	});
</script>

</body>
</html> --%>

 
   <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="../resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="../resources/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="../resources/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="../resources/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="../resources/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="../resources/assets/pages/css/components.css" rel="stylesheet">
  <link href="../resources/assets/corporate/css/style.css" rel="stylesheet">
  <link href="../resources/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="../resources/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="../resources/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="../resources/assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  
  <script src="/resources/jquery/jquery-3.6.1.min.js"></script>
  
<style>
	div.replyModal { position:relative; z-index:1; display:none; }
	div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
	div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); padding:20px 10px; background:#fff; border:2px solid #666; }
	div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
	div.modalContent button { font-size:20px; padding:5px 10px; margin:20px 0; background:#fff; border:none; }
	div.modalContent button.modal_cancel { margin-left:20px; }
</style>
	
<style>
	section.replyList { padding:30px 0; }
	section.replyList ol { padding:0; margin:0; }
	section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
	section.replyList div.memInfo { }
	section.replyList div.memInfo .memName { font-size:24px; font-weight:bold; }
	section.replyList div.memInfo .date { color:#999; display:inline-block; margin-left:10px; }
	section.replyList div.replyContent { padding:10px; margin:20px 0; }
	section.replyList div.replyFooter button { font-size:14px; border: none; background:none; margin-right:20px; }
</style>	
  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>010-2022-1105</span></li>
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
               <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                    <!-- 로그인 하지 않은 경우 -->
					<c:if test="${member == null}">
					   <li>
					    <a href="/member/signin">로그인</a>
					   </li>
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
					    	<a href="/member/signout">로그아웃</a>
					   </li>
					</c:if>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="/" style="text-decoration:none; font-size:30px;">Shop_99z</a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

         <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">
          <!-- 로그인 한 경우 -->
          <c:if test="${member != null}">
            <a href="/shop/cartList" class="top-cart-info-count">장바구니</a>
            <a href="/shop/orderList" class="top-cart-info-value">주문내역</a>
          </c:if>
          <!-- 로그인 하지 않은 경우 -->
          <c:if test="${member == null}">
            <a href="/member/signin" class="top-cart-info-count">장바구니</a>
            <a href="/member/signin" class="top-cart-info-value">주문내역</a>
          </c:if>
          
          </div>
          <i class="fa fa-shopping-cart"></i>         
        </div>
        <!--END CART -->

         <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                상의
              </a>
              <!-- BEGIN DROPDOWN MENU -->
              <ul class="dropdown-menu">
              	<li><a href="/shop/list?c=100&l=1">전체</a></li>
                <li><a href="/shop/list?c=101&l=2">맨투맨</a></li>
                <li><a href="/shop/list?c=102&l=2">후드</a></li>
                <li><a href="/shop/list?c=103&l=2">티셔츠</a></li>
                <li><a href="/shop/list?c=104&l=2">니트</a></li>
              </ul>
              <!-- END DROPDOWN MENU -->
            </li>
           
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                하의
              </a>
              <!-- BEGIN DROPDOWN MENU -->
              <ul class="dropdown-menu">
              	<li><a href="/shop/list?c=200&l=1">전체</a>
              	<li><a href="/shop/list?c=201&l=2">롱팬츠</a></li>
			    <li><a href="/shop/list?c=202&l=2">숏팬츠</a></li>
			    <li><a href="/shop/list?c=203&l=2">스커트</a></li>
              </ul>
              <!-- END DROPDOWN MENU -->
            </li>
			<li><a href="/shop/list?c=300&l=1">원피스</a></li>
			<li><a href="/shop/list?c=400&l=1">가방</a></li>
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->
    
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">Home</a></li>    
        </ul>
        
         <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix dropdown">
                <a href="/shop/list?c=100&l=1">
                  <i class="fa fa-angle-right"></i>
                  상의
                </a>
                <ul class="dropdown-menu">
                  <li><a href="/shop/list?c=100&l=1"><i class="fa fa-angle-right"></i>전체</a></li>
             	  <li><a href="/shop/list?c=101&l=2"><i class="fa fa-angle-right"></i>맨투맨</a></li>
				  <li><a href="/shop/list?c=102&l=2"><i class="fa fa-angle-right"></i>후드</a></li>
				  <li><a href="/shop/list?c=103&l=2"><i class="fa fa-angle-right"></i>티셔츠</a></li>
				  <li><a href="/shop/list?c=104&l=2"><i class="fa fa-angle-right"></i>니트</a></li>
                </ul>
              </li>
              <li class="list-group-item clearfix dropdown">
                <a href="/shop/list?c=200&l=1">
                  <i class="fa fa-angle-right"></i>
                  하의
                </a>
                <ul class="dropdown-menu">
                  <li><a href="/shop/list?c=200&l=1"><i class="fa fa-angle-right"></i>전체</a></li>
				  <li><a href="/shop/list?c=201&l=2"><i class="fa fa-angle-right"></i>롱팬츠</a></li>
				  <li><a href="/shop/list?c=202&l=2"><i class="fa fa-angle-right"></i>숏팬츠</a></li>
				  <li><a href="/shop/list?c=203&l=2"><i class="fa fa-angle-right"></i>스커트</a></li>
                </ul>
              </li>
              <li class="list-group-item clearfix"><a href="/shop/list?c=300&l=1"><i class="fa fa-angle-right"></i>원피스</a></li>
              <li class="list-group-item clearfix"><a href="/shop/list?c=400&l=1"><i class="fa fa-angle-right"></i>가방</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
       		 <form role="form" method="post" autocomplete="off">		
				<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}">
			</form>
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                    <img src="${view.gdsImg}" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="assets/pages/img/products/model7.jpg">
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                  <h1>${view.gdsName}</h1>
                  
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span style="text-align:center;"></span><fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" />원</strong>
                    </div>
                    <div class="availability">
                      재고량: <strong><fmt:formatNumber pattern="###,###,###" value="${view.gdsStock}" />EA</strong>
                    </div>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input type="number" class="numBox form-control input-sm" min="1" max="${view.gdsStock}" value="1" readonly="readonly" id="product-quantity" />
                    </div>
                    </div>

                    <button class="addCart_btn btn btn-primary" type="button">장바구니</button>
                   		<script>
					    $(".addCart_btn").click(function(){
					     var gdsNum = $("#gdsNum").val();
					     var cartStock = $(".numBox").val();
					        
					     var data = {
					       gdsNum : gdsNum,
					       cartStock : cartStock
					       };
					     
					     $.ajax({
					      url : "/shop/view/addCart",
					      type : "post",
					      data : data,
					      success : function(result){
					    	
						    	if(result == 1) {
								     alert("카트 담기 성공");
								     $(".numBox").val("1");
						    	} else {
						    		alert("로그인이 필요합니다.");
						    		$(".numBox").val("1");
						    	}
						    },
						    error : function(){
						     	alert("카트 담기 실패");
						    }
						   });
						  });
					   </script>
                  </div>
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#Description" data-toggle="tab">Description</a></li>
                    <li><a href="#Reviews" data-toggle="tab">Reviews</a></li>
                  </ul>
                    <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="Description">
                      <p>${view.gdsInfo} ${reply.memId}</p>
                    </div>

                    <div class="tab-pane fade" id="Reviews">
                      <div class="review-item clearfix">                 
                      <div id="reply">
						<c:if test="${member == null}">
							<p>상품평을 남기시려면 <a href="/member/signin">로그인</a>해주세요</p>
						</c:if>
						
						<c:if test="${member != null}">
						<section class="replyForm">
							<form role="form" method="post" autocomplete="off">
							
								<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}">
							
								<div class="input_area">
									<textarea class="form-control"name="repCon" rows="8" id="repCon"></textarea>
								</div>
								
								<div class="input_area padding-top-20">
									<button type="button" id="reply_btn" class="btn btn-primary">상품평 작성</button>
									
									<script>
										$("#reply_btn").click(function(){
											
											var formObj = $(".replyForm form[role='form']");
											var gdsNum = $("#gdsNum").val();
											var repCon = $("#repCon").val();
											
											// ReplyVO 형태로 데이터 생성
											var data = {
													gdsNum : gdsNum,
													repCon : repCon
													};
											
											$.ajax({
												url : "/shop/view/registReply",
												type : "post",
												data : data,
												success : function(){
													replyList();  // 리스트 새로고침
													$("#repCon").val("");  // 텍스트에어리어를 초기화
												}
											});
										});
									</script>
									
								</div>
							</form>
						</section>
						</c:if>
						
						<section class="replyList">
							<ol>
								<c:forEach items="${reply}" var="reply">
								<li>
									<div class="memInfo">
									<span class="memName">${reply.memName}</span>
									<span class="date"><fmt:formatDate value="${reply.repDate}" pattern="yyyy-MM-dd" /></span>
									</div>
									<div class="replyContent">${reply.repCon}</div>
								</li>
								</c:forEach>
							</ol>
							
							<script>
								function replyList() {
								   var gdsNum = ${view.gdsNum};
								   $.getJSON("/shop/view/replyList" + "?n=" + gdsNum, function(data){
								    var str = "";
								    
								    $(data).each(function(){
								     
								     console.log(data);
								     
								     var repDate = new Date(this.repDate);
								     repDate = repDate.toLocaleDateString("ko-US")
								     
								     str += "<li data-repNum='" + this.repNum + "'>"
								       + "<div class='memInfo'>"
								       + "<span class='memName'>" + this.memName + " "
								       + "<span class='date'>" + repDate + " "
								       + "</div>"
								       + "<div class='replyContent'>" + this.repCon + "</div>"
								       
								       + "<c:if test='${member != null}'>"
								       
								       + "<div class='replyFooter'>"
								       + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>수정</button>"
								       + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>삭제</button>"
								       + "</div>"
								       
								       + "</c:if>"
								       
								       + "</li>";             
								    });
								    
								    $("section.replyList ol").html(str);
								   });
								}
							</script>
							
							<script>
								$(document).on("click", ".modify", function(){
								   $(".replyModal").attr("style", "display:block;");
								   $(".replyModal").fadeIn(200);
								   
								   var repNum =$(this).attr("data-repNum");
								   var repCon = $(this).parent().parent().children(".replyContent").text();
	
								   $(".modal_repCon").val(repCon);
								   $(".modal_modify_btn").attr("data-repNum", repNum);
								});
							</script>
							
							<script>						 
								$(document).on("click", ".delete", function(){
									
									var deletConfirm = confirm("정말로 삭제하시겠습니까?"); 
									
									if(deletConfirm) {
									
										var data = {repNum : $(this).attr("data-repNum")}; 
										
										$.ajax({
											url : "/shop/view/deleteReply",
											type : "post",
											data : data,
											success : function(result){
												
												if(result == 1) {
													replyList(); 
												} else {
													alert("작성자 본인만 할 수 있습니다.")  							
												}
											},
											error : function(){
												alert("로그인하셔야합니다.")
											}
										});
									}
								});
							</script>
						</section>
					</div>
					</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-6 col-sm-6 padding-top-10">
            2015 © Keenthemes. ALL Rights Reserved. 
          </div>
          <!-- END COPYRIGHT -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->
    
    
    
<div class="replyModal">
<div class="modalContent">
	<div>
		<textarea class="modal_repCon" name="modal_repCon"></textarea>
	</div>
	
	<div>
		<button type="button" class="modal_modify_btn">수정</button>
		<button type="button" class="modal_cancel">취소</button>
	</div>
</div>
<div class="modalBackground"></div>
</div>

<script>
$(".modal_cancel").click(function(){
   $(".replyModal").attr("style", "display:none;");
   $(".replyModal").fadeOut(200);
});
</script>

<script>
$(".modal_modify_btn").click(function(){
	   var modifyConfirm = confirm("정말로 수정하시겠습니까?");
	   
	   if(modifyConfirm) {
	    var data = {
	       repNum : $(this).attr("data-repNum"),
	       repCon : $(".modal_repCon").val()
	      }; 
	    
	    $.ajax({
	     url : "/shop/view/modifyReply",
	     type : "post",
	     data : data,
	     success : function(result){
	      
	      if(result == 1) {
	       replyList();
	       $(".replyModal").fadeOut(200);
	      } else {
	       alert("작성자 본인만 수정할 수 있습니다.");         
	      }
	     },
	     error : function(){
	      alert("로그인하셔야합니다.")
	     }
	    });
	   }
	   
	});
</script>
    

    <script src="../resources/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="../resources/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="../resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="../resources/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='../resources/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="../resources/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="../resources/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>

    <script src="../resources/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>