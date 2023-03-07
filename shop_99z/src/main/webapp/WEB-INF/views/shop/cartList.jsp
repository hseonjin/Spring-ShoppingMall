<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>Shop_99z</title>
	<script src="/resources/jquery/jquery-3.6.1.min.js"></script>
	<style>
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
	    section#content { padding-left:20px; }
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
	   /*
	   section#content ul li { display:inline-block; margin:10px; }
	   section#content div.goodsThumb img { width:200px; height:200px; }
	   section#content div.goodsName { padding:10px 0; text-align:center; }
	   section#content div.goodsName a { color:#000; }
	   */
	   section#content ul li { margin:10px 0; }
	   section#content ul li img { width:250px; height:250px; }
	   section#content ul li::after { content:""; display:block; clear:both; }
	   section#content div.thumb { float:left; width:230px; }
	   section#content div.gdsInfo { float:right; width:calc(100% - 300px); }
	   section#content div.gdsInfo { font-size:20px; line-height:2; }
	   section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
	   section#content div.gdsInfo .delete { text-align:right; }
	   section#content div.gdsInfo .delete button { font-size:22px;
	              padding:5px 5px; border:1px solid #eee; background:#eee;}
	   .allCheck { float:left; width:200px; }
   	   .allCheck input { width:16px; height:16px; }
   	   .allCheck label { margin-left:10px; }
  	   .delBtn { float:right; width:300px; text-align:right; }
  	   .delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
  	   .checkBox { float:left; width:30px; }
  	   
  	   hr { margin: 20px 0; }
   	   
   	   .listResult { padding:20px; background:#eee; }
		.listResult .sum { float:left; width:45%; font-size:22px; }
		
		.listResult .orderOpne { float:right; width:45%; text-align:right; }
		.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
		.listResult::after { content:""; display:block; clear:both; }

		.orderInfo { border:5px solid #eee; padding:20px; display:none;}
		.orderInfo .inputArea { margin:10px 0; }
		.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
		.orderInfo .inputArea input { font-size:14px; padding:5px; }
		#memAddr2, #memAddr3 { width:250px; }
		
		.orderInfo .inputArea:last-child { margin-top:30px; }
		.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}

		.orderInfo .inputArea #sample2_address { width:230px; }
		.orderInfo .inputArea #sample2_detailAddress { width:280px; }
		.orderInfo .inputArea #sample2_extraAddress { display:none; }
	</style>
	
<%--	
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
				   <li>
				    <div class="allCheck">
				     <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">전체 선택</label>
				     
				     <script>
						$("#allCheck").click(function(){
						   var chk = $("#allCheck").prop("checked");
						   if(chk) {
						    $(".chBox").prop("checked", true);
						   } else {
						    $(".chBox").prop("checked", false);
						   }
						});
					  </script>   
				    </div>
				    
				    <div class="delBtn">
				     <button type="button" class="selectDelete_btn">선택 삭제</button>   
				     
						<script>
						   $(".selectDelete_btn").click(function(){
						    var confirm_val = confirm("정말 삭제하시겠습니까?");
						    
						    if(confirm_val) {
						     var checkArr = new Array();
						     
						     $("input[class='chBox']:checked").each(function(){
						      checkArr.push($(this).attr("data-cartNum"));
						     });
						      
						     $.ajax({
						      url : "/shop/deleteCart",
						      type : "post",
						      data : { chbox : checkArr },
						      success : function(result){
						    	  if(result == 1) { 
						    		  location.href = "/shop/cartList";
						    	  } else {
						    		  alert("삭제 실패");
						    	  }
						       
						      }
						     });
						    }   
						   });
						</script>
				     
				    </div>
				    
				   </li>
				   
				   <c:set var="sum" value="0" />
				
				   <c:forEach items="${cartList}" var="cartList">
				   <hr />
				   <li>
				    <div class="checkBox">
				     <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNum}" />
				    
				     <script>
					   $(".chBox").click(function(){
					    $("#allCheck").prop("checked", false);
					   });
					 </script>
				    
				    </div> 
				   
				    <div class="thumb">
				     <img src="${cartList.gdsThumbImg}" />
				    </div>
				    <div class="gdsInfo">
					    <p>
					     <span>상품명 : </span>${cartList.gdsName}<br />
					     <span>개당가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice}" />원<br />
					     <span>구입수량 : </span>${cartList.cartStock}개<br />
					     <span>최종가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice * cartList.cartStock}" />원
					    </p>  
									     
					<div class="delete">
					   <button type="button" class="delete_${cartList.cartNum}_btn" data-cartNum="${cartList.cartNum}">삭제</button>
					   
					   <script>
					    $(".delete_${cartList.cartNum}_btn").click(function(){
					     var confirm_val = confirm("정말 삭제하시겠습니까?");
					     
					     if(confirm_val) {
					      var checkArr = new Array();
					      
					      checkArr.push($(this).attr("data-cartNum"));
					                 
					      $.ajax({
					       url : "/shop/deleteCart",
					       type : "post",
					       data : { chbox : checkArr },
					       success : function(result){
					        if(result == 1) {       
					         location.href = "/shop/cartList";
					        } else {
					         alert("삭제 실패");
					        }
					       }
					      });
					     }   
					    });
					   </script>
					</div>
				    </div>
				   </li>
				   
				   <c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.cartStock)}" />
				   
				   </c:forEach>
				</ul>
				
				<div class="listResult">
				   <div class="sum">
				    총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
				   </div>
				   <div class="orderOpne">
				    <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
				    
				    <script>
					   $(".orderOpne_bnt").click(function(){
					    $(".orderInfo").slideDown();
					    $(".orderOpne_bnt").slideUp();
					   });        
					</script>
				   </div>
				</div>
				
				<div class="orderInfo">
				   <form role="form" method="post" autocomplete="off">
				      
				    <input type="hidden" name="amount" value="${sum}" />
				      
				    <div class="inputArea">
				     <label for="">수령인</label>
				     <input type="text" name="orderRec" id="orderRec" required="required" />
				    </div>
				    
				    <div class="inputArea">
				     <label for="orderPhone">수령인 연락처</label>
				     <input type="text" name="orderPhone" id="orderPhone" required="required" />
				    </div>
				    
<!-- 				    <div class="inputArea">
				     <label for="memAddr1">우편번호</label>
				     <input type="text" name="memAddr1" id="memAddr1" required="required" />
				    </div>
				    
				    <div class="inputArea">
				     <label for="memAddr2">1차 주소</label>
				     <input type="text" name="memAddr2" id="memAddr2" required="required" />
				    </div>
				    
				    <div class="inputArea">
				     <label for="memAddr3">2차 주소</label>
				     <input type="text" name="memAddr3" id="memAddr3" required="required" />
				    </div> -->
				    
				    <div class="inputArea">
				    	<p>
					    	<input type="text" id="sample2_postcode" placeholder="우편번호">
							<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
						</p>
						<p>
						<input type="text" name="memAddr1" id="sample2_address" placeholder="주소">
						<input type="text" name="memAddr2" id="sample2_detailAddress" placeholder="상세주소">
						<input type="text" name="memAddr3" id="sample2_extraAddress" placeholder="참고항목">
						</p>
						<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
						</div>
						
						<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
						    // 우편번호 찾기 화면을 넣을 element
						    var element_layer = document.getElementById('layer');
						
						    function closeDaumPostcode() {
						        // iframe을 넣은 element를 안보이게 한다.
						        element_layer.style.display = 'none';
						    }
						
						    function sample2_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var addr = ''; // 주소 변수
						                var extraAddr = ''; // 참고항목 변수
						
						                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						                    addr = data.roadAddress;
						                } else { // 사용자가 지번 주소를 선택했을 경우(J)
						                    addr = data.jibunAddress;
						                }
						
						                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						                if(data.userSelectedType === 'R'){
						                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있고, 공동주택일 경우 추가한다.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    // 조합된 참고항목을 해당 필드에 넣는다.
						                    document.getElementById("sample2_extraAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("sample2_extraAddress").value = '';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample2_postcode').value = data.zonecode;
						                document.getElementById("sample2_address").value = addr;
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById("sample2_detailAddress").focus();
						
						                // iframe을 넣은 element를 안보이게 한다.
						                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
						                element_layer.style.display = 'none';
						            },
						            width : '100%',
						            height : '100%',
						            maxSuggestItems : 5
						        }).embed(element_layer);
						
						        // iframe을 넣은 element를 보이게 한다.
						        element_layer.style.display = 'block';
						
						        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
						        initLayerPosition();
						    }
						
						    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
						    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
						    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
						    function initLayerPosition(){
						        var width = 300; //우편번호서비스가 들어갈 element의 width
						        var height = 400; //우편번호서비스가 들어갈 element의 height
						        var borderWidth = 5; //샘플에서 사용하는 border의 두께
						
						        // 위에서 선언한 값들을 실제 element에 넣는다.
						        element_layer.style.width = width + 'px';
						        element_layer.style.height = height + 'px';
						        element_layer.style.border = borderWidth + 'px solid';
						        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
						        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
						        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
						    }
						</script>
				    </div>
				    
				    <div class="inputArea">
				     <button type="submit" class="order_btn">주문</button>
				     <button type="button" class="cancel_btn">취소</button>
				     
				     <script>
					   $(".cancel_btn").click(function(){
						   $(".orderInfo").slideUp();
						   $(".orderOpne_bnt").slideDown();
						});        
					</script>   
				    </div>
				    
				   </form>   
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
            <h1>My Wish List</h1>
            <div class="goods-page">
              <div class="goods-data clearfix">
<!--                 <div class="table-wrapper-responsive">
 -->               <section id="content">
				<ul>
				   <li>
				    <div class="allCheck">
				     <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">전체 선택</label>
				     
				     <script>
						$("#allCheck").click(function(){
						   var chk = $("#allCheck").prop("checked");
						   if(chk) {
						    $(".chBox").prop("checked", true);
						   } else {
						    $(".chBox").prop("checked", false);
						   }
						});
					  </script>   
				    </div>
				    
				    <div class="delBtn">
				     <button type="button" class="selectDelete_btn">선택 삭제</button>   
				     
						<script>
						   $(".selectDelete_btn").click(function(){
						    var confirm_val = confirm("정말 삭제하시겠습니까?");
						    
						    if(confirm_val) {
						     var checkArr = new Array();
						     
						     $("input[class='chBox']:checked").each(function(){
						      checkArr.push($(this).attr("data-cartNum"));
						     });
						      
						     $.ajax({
						      url : "/shop/deleteCart",
						      type : "post",
						      data : { chbox : checkArr },
						      success : function(result){
						    	  if(result == 1) { 
						    		  location.href = "/shop/cartList";
						    	  } else {
						    		  alert("삭제 실패");
						    	  }
						       
						      }
						     });
						    }   
						   });
						</script>
				     
				    </div>
				    
				   </li>
				   
				   <c:set var="sum" value="0" />
				
				   <c:forEach items="${cartList}" var="cartList">
				   <hr />
				   <li>
				    <div class="checkBox">
				     <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNum}" />
				    
				     <script>
					   $(".chBox").click(function(){
					    $("#allCheck").prop("checked", false);
					   });
					 </script>
				    
				    </div> 
				   
				    <div class="thumb">
				     <img src="${cartList.gdsThumbImg}" />
				    </div>
				    <div class="gdsInfo">
					    <p>
					     <span>상품명 : </span>${cartList.gdsName}<br />
					     <span>개당가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice}" />원<br />
					     <span>구입수량 : </span>${cartList.cartStock}개<br />
					     <span>최종가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.gdsPrice * cartList.cartStock}" />원
					    </p>  
									     
					<div class="delete">
					   <button type="button" class="delete_${cartList.cartNum}_btn" data-cartNum="${cartList.cartNum}">삭제</button>
					   
					   <script>
					    $(".delete_${cartList.cartNum}_btn").click(function(){
					     var confirm_val = confirm("정말 삭제하시겠습니까?");
					     
					     if(confirm_val) {
					      var checkArr = new Array();
					      
					      checkArr.push($(this).attr("data-cartNum"));
					                 
					      $.ajax({
					       url : "/shop/deleteCart",
					       type : "post",
					       data : { chbox : checkArr },
					       success : function(result){
					        if(result == 1) {       
					         location.href = "/shop/cartList";
					        } else {
					         alert("삭제 실패");
					        }
					       }
					      });
					     }   
					    });
					   </script>
					</div>
				    </div>
				   </li>
				   
				   <c:set var="sum" value="${sum + (cartList.gdsPrice * cartList.cartStock)}" />
				   
				   </c:forEach>
				</ul>
				
				<div class="listResult">
				   <div class="sum">
				    총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
				   </div>
				   <div class="orderOpne">
				    <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
				    
				    <script>
					   $(".orderOpne_bnt").click(function(){
					    $(".orderInfo").slideDown();
					    $(".orderOpne_bnt").slideUp();
					   });        
					</script>
				   </div>
				</div>
				
				<div class="orderInfo">
				   <form role="form" method="post" autocomplete="off">
				      
				    <input type="hidden" name="amount" value="${sum}" />
				      
				    <div class="inputArea">
				     <label for="">수령인</label>
				     <input type="text" name="orderRec" id="orderRec" required="required" />
				    </div>
				    
				    <div class="inputArea">
				     <label for="orderPhone">수령인 연락처</label>
				     <input type="text" name="orderPhone" id="orderPhone" required="required" />
				    </div>
				    				    
				    <div class="inputArea">
				    	<p>
					    	<input type="text" id="sample2_postcode" placeholder="우편번호">
							<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
						</p>
						<p>
						<input type="text" name="memAddr1" id="sample2_address" placeholder="주소">
						<input type="text" name="memAddr2" id="sample2_detailAddress" placeholder="상세주소">
						<input type="text" name="memAddr3" id="sample2_extraAddress" placeholder="참고항목">
						</p>
						<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
						<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
						</div>
						
						<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
						    // 우편번호 찾기 화면을 넣을 element
						    var element_layer = document.getElementById('layer');
						
						    function closeDaumPostcode() {
						        // iframe을 넣은 element를 안보이게 한다.
						        element_layer.style.display = 'none';
						    }
						
						    function sample2_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {

						                var addr = ''; 
						                var extraAddr = ''; 
						
						                if (data.userSelectedType === 'R') { 
						                    addr = data.roadAddress;
						                } else { 
						                    addr = data.jibunAddress;
						                }
						
						                if(data.userSelectedType === 'R'){

						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    if(extraAddr !== ''){
						                        extraAddr = ' (' + extraAddr + ')';
						                    }
						                    document.getElementById("sample2_extraAddress").value = extraAddr;
						                
						                } else {
						                    document.getElementById("sample2_extraAddress").value = '';
						                }
						
						                document.getElementById('sample2_postcode').value = data.zonecode;
						                document.getElementById("sample2_address").value = addr;
						                document.getElementById("sample2_detailAddress").focus();
						
						                element_layer.style.display = 'none';
						            },
						            width : '100%',
						            height : '100%',
						            maxSuggestItems : 5
						        }).embed(element_layer);
						
						        element_layer.style.display = 'block';
						
						        initLayerPosition();
						    }
						
						    function initLayerPosition(){
						        var width = 300; 
						        var height = 400; 
						        var borderWidth = 5; 
						
						        element_layer.style.width = width + 'px';
						        element_layer.style.height = height + 'px';
						        element_layer.style.border = borderWidth + 'px solid';
						        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
						        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
						    }
						</script>
				    </div>
				    
				    <div class="inputArea">
				     <button type="submit" class="order_btn">주문</button>
				     <button type="button" class="cancel_btn">취소</button>
				     
				     <script>
					   $(".cancel_btn").click(function(){
						   $(".orderInfo").slideUp();
						   $(".orderOpne_bnt").slideDown();
						});        
					</script>   
				    </div>
				    
				   </form>   
				</div>
			</section>
              </div>
            </div>
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
          <div class="col-md-4 col-sm-4 padding-top-10">
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
