<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>Shop_99z</title>
	
<%-- 	<style>
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
	   section#content ul li { display:inline-block; margin:10px; }
	   section#content div.goodsThumb img { width:150px; height:150px; }
	   section#content div.goodsName { padding:10px 0; text-align:center; font-weight:bold;}
	   section#content div.goodsPrice { text-align:center; }
	   section#content div.goodsName a { color:#000; }
	</style>
	
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
				<ul>
					<c:forEach items="${list}" var="list">
					<li>
						<div class="goodsThumb">
							<img src="${list.gdsThumbImg}">
						</div>
						<div class="goodsName">
							<a href="/shop/view?n=${list.gdsNum}">${list.gdsName}</a>
						</div>
						<div class="goodsPrice">
							<fmt:formatNumber pattern="###,####,###" value="${list.gdsPrice}" />
						</div>
					
					</c:forEach>
				</ul>
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

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1><span>Shop_99z</span></h1>
        <em>Shopping Mall</em>
      </div></div>
    </div>

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
            <div class="row list-view-sorting clearfix">
              <div class="col-md-2 col-sm-2 list-view">
                <a href="javascript:;"><i class="fa fa-th-large"></i></a>
                <a href="javascript:;"><i class="fa fa-th-list"></i></a>
              </div>
            </div>
            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">
				<section id="content">
					<ul>
						<c:forEach items="${list}" var="list">
						<li>
							<div class="goodsThumb">
								<a href="/shop/view?n=${list.gdsNum}"><img src="${list.gdsThumbImg}"></a>
							</div>
							<div class="goodsName">
								<a href="/shop/view?n=${list.gdsNum}">${list.gdsName}</a>
							</div>
							<div class="goodsPrice">
								<fmt:formatNumber pattern="###,####,###" value="${list.gdsPrice}" />
							</div>
						
						</c:forEach>
					</ul>
				</section>
            </div>
            <!-- END PRODUCT LIST -->
          </div>
          <!-- END CONTENT -->
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

    <script src="../resources/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="../resources/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="../resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="../resources/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='../resources/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="../resources/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="../resources/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="../resources/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
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
