<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
	Template | 404 :: w3layouts</title>
	<style>
	* {margin:0;padding:0;}
	.section {}
	.section input[id*="slide"] {display:none;}

	.section .slide-wrap {max-width:1200px;margin:0 auto;}
	.section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;}
	.section .slidelist > li > a img {width:100%;}
	.section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:30px;background:url('../img/left.png') center center / 100% no-repeat;}
	.section .slidelist .right {right:30px;background:url('../img/right.png') center center / 100% no-repeat;}
	.section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
	
	.section .slidelist .textbox h3 {font-size:50px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
	.section .slidelist .textbox p {font-size:24px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}

	.section input[id="slide01"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-200%);}

	.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	</style>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/mypage.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Riviera Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript">	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/flexslider.css" type="text/css"
	media="screen" />
<script src="../js/jquery.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		var defaults = {
		containerID: 'toTop', // fading element id
		containerHoverID: 'toTopHover', // fading element hover id
		scrollSpeed: 1200,
		easingType: 'linear' 
		};
		 */
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>

</head>
<body>
	<!-- header -->
	<div class="banner">
		<div class="container">
			<div class="head-nav">
				<span class="menu"> </span>
				<ul class="cl-effect-7">
					<li><a href="../main.jsp">호텔 소개</a></li>
					<li><a href="../room/accomo.jsp">객실 소개</a></li>
					<li><a href="../rest/facil.jsp">시설 소개</a></li>
					<li><a href="../trip/minsok.jsp">주변 관광지</a></li>
					<li><a href="../FAQ.jsp">고객센터</a></li>
					<li><a href="../reservations/reserIntro.jsp">예약하기</a></li>
					<li><a href="../Event/Eventindex.jsp">이벤트</a></li>

					<c:set var="userid" value="${userid }" />
					<c:if test="${userid eq null}">
						<li><a href="../login.do">로그인</a></li>
						<li><a href="../join.do">회원가입</a></li>
					</c:if>

					<c:if test="${userid ne null && userid ne 'admin' }">
						<li><a href="../logout.do">로그아웃</a></li>
						<!-- <li><a href="member/mypage.jsp">마이페이지</a></li> -->
						<li><a href="../MemberServlet?command=mypage_action&userid=${userid }">마이페이지</a></li>
					</c:if>
					<c:if test="${userid eq 'admin' }">
						<li><a href="../logout.do">로그아웃</a></li>
						<!-- <li><a href="member/mypage.jsp">마이페이지</a></li> -->
						<li><a href="../login.do?userid=${userid }">관리자페이지</a></li>
					</c:if>

					<div class="clearfix"></div>
				</ul>
			</div>

			<script>
				$("span.menu").click(function() {
					$(".head-nav ul").slideToggle(300, function() {
						// Animation complete.
					});
				});
			</script>
			<!-- script-for-nav -->
			<div class="logo">
				<a href="../main.jsp"><img src="../images/logo.png"
					class="img-responsive" alt="" /></a>
			</div>
			<div class="banner-info">
				<p>Enjoy the stupendous calm and peace of this tree-shaded
					location cradled by mountains where time stands still.choose ease,
					harmony and wellbeing over the hectic pace of today's lifestyle!</p>
			</div>
		</div>
	</div>
	<!-- header -->
	
<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slide-wrap">
		<ul class="slidelist">
			<li>
				<a href=Event01.jsp>
					<label for="slide03" class="left"></label>
					<div class="textbox">
						<h3>여름 맞이 이벤트</h3>
						<p>여름 맞이 수영장 이벤트</p>
					</div>
				<img src="../img/swimming_1.jpg">	
					<label for="slide02" class="right"></label>
				</a>
			</li>
			<li>
				<a href=Event02.jsp>
					<label for="slide01" class="left"></label>
					<div class="textbox">
						<h3>여름 성수기 이벤트</h3>
						<p>여름 성수기를 맞이하여 패키지 이벤트</p>
					</div>
					<img src="../img/room_1.jpg">
					<label for="slide03" class="right"></label>
				</a>
			</li>
			<li>
				<a href=Event03.jsp>
					<label for="slide02" class="left"></label>
					<div class="textbox">
						<h3>떠나자 호텔로</h3>
						<p>어디 나가지말고 호캉스로 힐링하자</p>
					</div>
					<img src="../img/travel.jpg">
					<label for="slide01" class="right"></label>
				</a>
			</li>
		</ul>
	</div>
</div>

	
	<!-- footer -->
	<div class="footer">
		<div class="col-md-6 footer-left">
			<img src="../images/4.jpg" class="img-responsive" alt="">
			<div class="col-md-6 footer-left1">
				<img src="../images/logo5.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-left2">
				<ul>
					<li>rooms Resort</li>
					<li>matera (Italy)</li>
					<li>PO Box 68789</li>
					<li>Street 445
						</p>
					</li>
				</ul>
				<p>+911234567895</p>
				<h6>
					<a href="#">info@rooms.com 
				</h6>
				</a>
			</div>
			<div class="clearfix"></div>
			<div class="footer-left3">
				<ul>
					<li><a href="#"><i class="fb"></i></a></li>
					<li><a href="#"><i class="twt"></i></a></li>
					<li><a href="#"><i class="goop"></i></a></li>
					<li><a href="#"><i class="in"></i></a></li>
					<li><a href="#"><i class="do"></i></a></li>
					<li><a href="#"><i class="drib"></i></a></li>
					<li><a href="#"><i class="tet"></i></a></li>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
		<div class="col-md-6 footer-right">
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et
				varius turpis. Donec enim sapien, sollicitudin quis volutpat nec,
				sagittis eget ex. Pellentesque in accumsan orci.-<span>Ian
					Solo-</span>
			</p>
			<div class="col-md-6 footer-right1">
				<img src="../images/fo.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-right2">
				<img src="../images/un.png" class="img-responsive" alt="">
			</div>
			<div class="clearfix"></div>
			<h6>Copyrights © 2015 Green All rights reserved</h6>
		</div>
		<div class="clearfix"></div>
	</div>
	<a href="#" id="toTop" style="display: block;"><span
		id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover"
		style="opacity: 0;"> </span></a>
	<!-- footer -->
</body>
</html>