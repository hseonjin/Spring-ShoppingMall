<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop_99z</title>

<!-- jQuery / Bootstrap -->
<script src="/resources/jquery/jquery-3.6.1.min.js"></script>
<script src="/resources/bootstrap/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
<link href="/resources/css/index.css" rel="stylesheet" type="text/css">

<style>
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:80px; padding:5px; }
	label[for='gdsInfo'] { display:block; }
	input { width:150px; }
	textarea#gdsInfo { width:400px; height:180px; }
</style>

<style>
/*
#container_box table { width:900px; }
#container_box table th { font-size:20px; font-weight:bold;
         text-align:center; padding:10px; border-bottom:2px solid #666; }
#container_box table tr:hover { background:#eee; }
#container_box table td { padding:10px; text-align:center; }
#container_box table img { width:150px; height:auto; }
*/
   .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
   .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
   
   .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
   .orderView li::after { content:""; display:block; clear:both; }
   
   .thumb { float:left; width:200px; }
   .thumb img { width:200px; height:200px; }
   .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
   .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }

	.deliveryChange { text-align:right; }
	.delivery1_btn,
	.delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; }
</style>

<%-- </head>
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
		<aside>
			<%@ include file="../include/aside.jsp" %>
		</aside>
		<div id="container_box">

			<div class="orderInfo">
			    <c:forEach items="${orderView}" var="orderView" varStatus="status">
			    
			    <c:if test="${status.first}">
			     <p><span>주문자</span> ${orderView.memId}</p>
			     <p><span>수령인</span> ${orderView.orderRec}</p>
			     <p><span>주소</span> (${orderView.memAddr1}) ${orderView.memAddr2}, ${orderView.memAddr3}</p>
			     <p><span>금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
			     <p><span>배송상태</span> ${orderView.delivery}</p>
 				 
				 <div class="deliveryChange">
				   <form role="form" method="post" class="deliveryForm">
				   
				    <input type="hidden" name="orderId" value="${orderView.orderId}" />
				    <input type="hidden" name="delivery" class="delivery" value="" />
				    
				    <button type="button" class="delivery1_btn">배송 중</button>
				    <button type="button" class="delivery2_btn">배송 완료</button>
				    
				    <script>
				     $(".delivery1_btn").click(function(){
				      $(".delivery").val("배송 중");
				      run();
				     });
				     
				     $(".delivery2_btn").click(function(){
				      $(".delivery").val("배송 완료");
				      run();
				      
				     });
				     
				     function run(){
				      $(".deliveryForm").submit();
				     }
				    
				    </script>
				   </form>
			    </div>
			    </c:if>
			   </c:forEach>
			</div>
			
			<ul class="orderView">
			   <c:forEach items="${orderView}" var="orderView">       
			   <li>
			    <div class="thumb">
			     <img src="${orderView.gdsThumbImg}" />
			    </div>
			    <div class="gdsInfo">
			     <p>
			      <span>상품명</span> ${orderView.gdsName}<br />
			      <span>개당금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /> 원<br />
			      <span>구입수량</span> ${orderView.cartStock} 개<br />
			      <span>총 금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" /> 원                  
			     </p>
			    </div>
			   </li>       
			   </c:forEach>
			</ul>
		</div>
	</section>

	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>
</div>
</body>
</html> --%>

 <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="/resources/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="/resources/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <link href="/resources/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="/resources/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="/resources/assets/pages/css/components.css" rel="stylesheet">
  <link href="/resources/assets/corporate/css/style.css" rel="stylesheet">
  <link href="/resources/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="/resources/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="/resources/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="/resources/assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  
 <style>
  section#content ul li { display:inline-block; margin:10px; }
  section#content div.goodsThumb img { width:200px; height:200px; }
  section#content div.goodsName { padding:10px 0; text-align:center; font-weight:bold;}
  section#content div.goodsPrice { text-align:center; }
  section#content div.goodsName a { color:#000; }
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
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
            	<li class="list-group-item clearfix"><a href="/admin/goods/register"><i class="fa fa-angle-right"></i>상품등록</a></li>
				<li class="list-group-item clearfix"><a href="/admin/goods/list"><i class="fa fa-angle-right"></i>상품목록</a></li>
				<li class="list-group-item clearfix"><a href="/admin/shop/orderList"><i class="fa fa-angle-right"></i>주문목록</a></li>
				<li class="list-group-item clearfix"><a href="/admin/shop/allReply"><i class="fa fa-angle-right"></i>상품평</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->
          	<div id="container_box" class="col-md-9 col-sm-7">
			<div class="orderInfo">
			    <c:forEach items="${orderView}" var="orderView" varStatus="status">
			    
			    <c:if test="${status.first}">
			     <p><span>주문자</span> ${orderView.memId}</p>
			     <p><span>수령인</span> ${orderView.orderRec}</p>
			     <p><span>주소</span> (${orderView.memAddr1}) ${orderView.memAddr2}, ${orderView.memAddr3}</p>
			     <p><span>금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
			     <p><span>배송상태</span> ${orderView.delivery}</p>
 				 
				 <div class="deliveryChange">
				   <form role="form" method="post" class="deliveryForm">
				   
				    <input type="hidden" name="orderId" value="${orderView.orderId}" />
				    <input type="hidden" name="delivery" class="delivery" value="" />
				    
				    <button type="button" class="delivery1_btn">배송 중</button>
				    <button type="button" class="delivery2_btn">배송 완료</button>
				    
				    <script>
				     $(".delivery1_btn").click(function(){
				      $(".delivery").val("배송 중");
				      run();
				     });
				     
				     $(".delivery2_btn").click(function(){
				      $(".delivery").val("배송 완료");
				      run();
				      
				     });
				     
				     function run(){
				      $(".deliveryForm").submit();
				     }
				    
				    </script>
				   </form>
			    </div>
			    </c:if>
			   </c:forEach>
			</div>
			
			<ul class="orderView">
			   <c:forEach items="${orderView}" var="orderView">       
			   <li>
			    <div class="thumb">
			     <img src="${orderView.gdsThumbImg}" />
			    </div>
			    <div class="gdsInfo">
			     <p>
			      <span>상품명</span> ${orderView.gdsName}<br />
			      <span>개당금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice}" /> 원<br />
			      <span>구입수량</span> ${orderView.cartStock} 개<br />
			      <span>총 금액</span> <fmt:formatNumber pattern="###,###,###" value="${orderView.gdsPrice * orderView.cartStock}" /> 원                  
			     </p>
			    </div>
			   </li>       
			   </c:forEach>
			</ul>
		</div>
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
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

    <script src="/resources/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="/resources/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="/resources/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="/resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="/resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="/resources/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='/resources/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="/resources/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="/resources/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="/resources/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

    <script src="../resources/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
