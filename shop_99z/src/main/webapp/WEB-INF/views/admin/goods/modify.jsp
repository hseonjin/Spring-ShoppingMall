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

<script src="/resources/ckeditor/ckeditor.js"></script>

<%-- <style>
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:80px; padding:5px; }
	label[for='gdsInfo'] { display:block; }
	input { width:150px; }
	textarea#gdsInfo { width:400px; height:180px; }
	.select_img img { width: 400px; margin:20px 0; }
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
		<aside>
			<%@ include file="../include/aside.jsp" %>
		</aside>
		<div id="container_box">
			<h2>상품 수정</h2>
			
			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			
			<input type="hidden" name="gdsNum" value="${goods.gdsNum}" />
			
			<div class="inputArea">	
				<label>1차 분류</label>
				<select class="category1">
					<option value="">전체</option>
				</select>			
				<label>2차 분류</label>
				<select class="category2" name="cateCode">
					<option value="">전체</option>
				</select>
			</div>
			<div class="inputArea">
				<label for="gdsName">상품명</label>
				<input type="text" id="gdsName" name="gdsName" value="${goods.gdsName}"/>
			</div>
			<div class="inputArea">
				<label for="gdsPrice">상품가격</label>
				<input type="text" id="gdsPrice" name="gdsPrice" value="${goods.gdsPrice}"/>
			</div>
			<div class="inputArea">
				<label for="gdsStock">상품수량</label>
				<input type="text" id="gdsStock" name="gdsStock" value="${goods.gdsStock}"/>
			</div>
			<div class="inputArea">
				<label for="gdsInfo">상품소개</label>
				<textarea rows="5" cols="50" id="gdsInfo" name="gdsInfo">${goods.gdsInfo}</textarea>
			
			<script>
			   var ckeditor_config = {
			     resize_enaleb : false,
			     enterMode : CKEDITOR.ENTER_BR,
			     shiftEnterMode : CKEDITOR.ENTER_P,
			     filebrowserUploadUrl : "/admin/goods/ckUpload"
			   };
			   
			   CKEDITOR.replace("gdsInfo", ckeditor_config);
			</script>
			
			</div>
			<div class="inputArea">
				<label for="gdsImg">상품사진</label>
				<input type="file" id="gdsImg" name="file" />
				<div class="select_img">
					<img src="${goods.gdsImg}" />
					<input type="hidden" name="gdsImg" value="${goods.gdsImg}" />
					<input type="hidden" name="gdsThumbImg" value="${goods.gdsThumbImg}" />
				</div>
				
				<script>
					$("#gdsImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(400);
							}
							render.readAsDataURL(this.files[0]);
						}
					});
				</script>
				<%=request.getRealPath("/") %>
				
			</div>
		
			<div class="inputArea">
				<button type="submit" id="update_Btn" class="btn btn-primary">완료</button>
				<button type="button" id="back_Btn" class="btn btn-warning">취소</button>
				
				<script>
					$('#back_Btn').click(function(){
						location.href = "/admin/goods/view?n=" + ${goods.gdsNum};
					})
				</script>
			</div>			
			</form>
		</div>
	</section>

	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>
</div>


<script>
var jsonData = JSON.parse('${category}');

var cate1Arr = new Array();
var cate1Obj = new Object();

for(var i = 0; i < jsonData.length; i++) {
	
	if(jsonData[i].level == "1") {
		cate1Obj = new Object();  //초기화
		cate1Obj.cateCode = jsonData[i].cateCode;
		cate1Obj.cateName = jsonData[i].cateName;
		cate1Arr.push(cate1Obj);
	}
}

var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
	cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
						+ cate1Arr[i].cateName + "</option>");	
}


$(document).on("change", "select.category1", function(){

	var cate2Arr = new Array();
	var cate2Obj = new Object();
	
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "2") {
			cate2Obj = new Object();
			cate2Obj.cateCode = jsonData[i].cateCode;
			cate2Obj.cateName = jsonData[i].cateName;
			cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
			
			cate2Arr.push(cate2Obj);
		} 
	}
	
	var cate2Select = $("select.category2");
	
	/*
	for(var i = 0; i < cate2Arr.length; i++) {
			cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
								+ cate2Arr[i].cateName + "</option>");
	}
	*/
	
	cate2Select.children().remove();
 
	$("option:selected", this).each(function(){
		
		var selectVal = $(this).val();		
				
		cate2Select.append("<option value='" + selectVal + "'>전체</option>");
		
		for(var i = 0; i < cate2Arr.length; i++) {
			if(selectVal == cate2Arr[i].cateCodeRef) {
				cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
									+ cate2Arr[i].cateName + "</option>");
			}
		}		
	});
});

var select_cateCode = '${goods.cateCode}';
var select_cateCodeRef = '${goods.cateCodeRef}';
var select_cateName = '${goods.cateName}';

console.log("select_cateCode = " + select_cateCode);
console.log("select_cateCodeRef = " + select_cateCodeRef);


if(select_cateCodeRef != null && select_cateCodeRef != "") {
	
	console.log("값이 없으면");
	
	$(".category1").val(select_cateCodeRef);
	$(".category2").val(select_cateCode);
	$(".category2").children().remove();
	$(".category2").append("<option value='"
							+ select_cateCode + "'>" + select_cateName + "</option>");


	
	
} else {
	
	console.log("값이 있으면");
	
	$(".category1").val(select_cateCode);
	//$(".category2").val(select_cateCode);
	$(".category2").append("<option value='"
			+ select_cateCode + "' selected='selected'>전체</option>");
}


</script>
<script>
var regExp = /[^0-9]/gi;

$("#gdsPrice").keyup(function(){ numCheck($(this)); });
$("#gdsStock").keyup(function(){ numCheck($(this)); });

function numCheck(selector) {
	var tempVal = selector.val();
	selector.val(tempVal.replace(regExp, ""));
}
</script>

<script>
var regExp = /[^0-9]/gi;

$("#gdsPrice").keyup(function(){ numCheck($(this)); });
$("#gdsStock").keyup(function(){ numCheck($(this)); });

function numCheck(selector) {
   var tempVal = selector.val();
   selector.val(tempVal.replace(regExp, ""));
}
</script>

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
			<h2>상품 수정</h2>
			
			<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			
			<input type="hidden" name="gdsNum" value="${goods.gdsNum}" />
			
			<div class="inputArea">	
				<label>1차 분류</label>
				<select class="category1">
					<option value="">전체</option>
				</select>			
				<label>2차 분류</label>
				<select class="category2" name="cateCode">
					<option value="">전체</option>
				</select>
			</div>
			<div class="inputArea">
				<label for="gdsName">상품명</label>
				<input type="text" id="gdsName" name="gdsName" value="${goods.gdsName}"/>
			</div>
			<div class="inputArea">
				<label for="gdsPrice">상품가격</label>
				<input type="text" id="gdsPrice" name="gdsPrice" value="${goods.gdsPrice}"/>
			</div>
			<div class="inputArea">
				<label for="gdsStock">상품수량</label>
				<input type="text" id="gdsStock" name="gdsStock" value="${goods.gdsStock}"/>
			</div>
			<div class="inputArea">
				<label for="gdsInfo">상품소개</label>
				<textarea rows="5" cols="50" id="gdsInfo" name="gdsInfo">${goods.gdsInfo}</textarea>
			
			<script>
			   var ckeditor_config = {
			     resize_enaleb : false,
			     enterMode : CKEDITOR.ENTER_BR,
			     shiftEnterMode : CKEDITOR.ENTER_P,
			     filebrowserUploadUrl : "/admin/goods/ckUpload"
			   };
			   
			   CKEDITOR.replace("gdsInfo", ckeditor_config);
			</script>
			
			</div>
			<div class="inputArea">
				<label for="gdsImg">상품사진</label>
				<input type="file" id="gdsImg" name="file" />
				<div class="select_img">
					<img src="${goods.gdsImg}" />
					<input type="hidden" name="gdsImg" value="${goods.gdsImg}" />
					<input type="hidden" name="gdsThumbImg" value="${goods.gdsThumbImg}" />
				</div>
				
				<script>
					$("#gdsImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(400);
							}
							render.readAsDataURL(this.files[0]);
						}
					});
				</script>
				<%=request.getRealPath("/") %>
				
			</div>
		
			<div class="inputArea">
				<button type="submit" id="update_Btn" class="btn btn-primary">완료</button>
				<button type="button" id="back_Btn" class="btn btn-warning">취소</button>
				
				<script>
					$('#back_Btn').click(function(){
						location.href = "/admin/goods/view?n=" + ${goods.gdsNum};
					})
				</script>
			</div>			
			</form>
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
    
    <script>
var jsonData = JSON.parse('${category}');

var cate1Arr = new Array();
var cate1Obj = new Object();

for(var i = 0; i < jsonData.length; i++) {
	
	if(jsonData[i].level == "1") {
		cate1Obj = new Object();  //초기화
		cate1Obj.cateCode = jsonData[i].cateCode;
		cate1Obj.cateName = jsonData[i].cateName;
		cate1Arr.push(cate1Obj);
	}
}

var cate1Select = $("select.category1")

for(var i = 0; i < cate1Arr.length; i++) {
	cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
						+ cate1Arr[i].cateName + "</option>");	
}


$(document).on("change", "select.category1", function(){

	var cate2Arr = new Array();
	var cate2Obj = new Object();
	
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "2") {
			cate2Obj = new Object();
			cate2Obj.cateCode = jsonData[i].cateCode;
			cate2Obj.cateName = jsonData[i].cateName;
			cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
			
			cate2Arr.push(cate2Obj);
		} 
	}
	
	var cate2Select = $("select.category2");
	
	/*
	for(var i = 0; i < cate2Arr.length; i++) {
			cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
								+ cate2Arr[i].cateName + "</option>");
	}
	*/
	
	cate2Select.children().remove();
 
	$("option:selected", this).each(function(){
		
		var selectVal = $(this).val();		
				
		cate2Select.append("<option value='" + selectVal + "'>전체</option>");
		
		for(var i = 0; i < cate2Arr.length; i++) {
			if(selectVal == cate2Arr[i].cateCodeRef) {
				cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
									+ cate2Arr[i].cateName + "</option>");
			}
		}		
	});
});

var select_cateCode = '${goods.cateCode}';
var select_cateCodeRef = '${goods.cateCodeRef}';
var select_cateName = '${goods.cateName}';

console.log("select_cateCode = " + select_cateCode);
console.log("select_cateCodeRef = " + select_cateCodeRef);


if(select_cateCodeRef != null && select_cateCodeRef != "") {
	
	console.log("값이 없으면");
	
	$(".category1").val(select_cateCodeRef);
	$(".category2").val(select_cateCode);
	$(".category2").children().remove();
	$(".category2").append("<option value='"
							+ select_cateCode + "'>" + select_cateName + "</option>");


	
	
} else {
	
	console.log("값이 있으면");
	
	$(".category1").val(select_cateCode);
	//$(".category2").val(select_cateCode);
	$(".category2").append("<option value='"
			+ select_cateCode + "' selected='selected'>전체</option>");
}


</script>
<script>
var regExp = /[^0-9]/gi;

$("#gdsPrice").keyup(function(){ numCheck($(this)); });
$("#gdsStock").keyup(function(){ numCheck($(this)); });

function numCheck(selector) {
	var tempVal = selector.val();
	selector.val(tempVal.replace(regExp, ""));
}
</script>

<script>
var regExp = /[^0-9]/gi;

$("#gdsPrice").keyup(function(){ numCheck($(this)); });
$("#gdsStock").keyup(function(){ numCheck($(this)); });

function numCheck(selector) {
   var tempVal = selector.val();
   selector.val(tempVal.replace(regExp, ""));
}
</script>

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