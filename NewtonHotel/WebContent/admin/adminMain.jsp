<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>관리자 페이지</title>
<link href="../newton_hotel/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="../newton_hotel/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="../newton_hotel/css/mypage.css" rel="stylesheet" type="text/css"
	media="all" />
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
<link rel="stylesheet" href="../newton_hotel/css/flexslider.css" type="text/css"
	media="screen" />
<script src="../newton_hotel/js/jquery.min.js"></script>
<script src="../newton_hotel/js/modernizr.custom.js"></script>
<script type="text/javascript" src="../newton_hotel/js/move-top.js"></script>
<script type="text/javascript" src="../newton_hotel/js/easing.js"></script>
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
<!-- <script>
function CheckSession() { 
	if (sessionStorage.getItem("loginKey") == null) { 
		window.location = "login.do"; 
		} 
	} 
	setInterval(CheckSession(), 100);
</script> -->

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
					<li><a href="login.do?userid=${userid }">관리자페이지</a></li>
					<li><a href="logout.do">로그아웃</a></li>
					<div class="clearfix"></div>
				</ul>
			</div>

			<!-- script-for-nav -->
			<script>
				$("span.menu").click(function() {
					$(".head-nav ul").slideToggle(300, function() {
						// Animation complete.
					});
				});
			</script>
			<!-- script-for-nav -->
			<div class="logo">
				<a href="login.do?userid=admin">
				<img src="../newton_hotel/images/logo.png" class="img-responsive" alt="" />
				</a>
			</div>
			<div class="banner-info">
				<p>Enjoy the stupendous calm and peace of this tree-shaded
					location cradled by mountains where time stands still.choose ease,
					harmony and wellbeing over the hectic pace of today's lifestyle!</p>
			</div>
		</div>
	</div>
	<!-- header -->

	<div class="wrap"><h2 style="text-align: center;">관리자 페이지</h2>
		<div class="listContainer">
			<ul>
				<br>
				<li><a href="../newton_hotel/MemberServlet?command=all_user_info_select">
					<p style="font-size:130%;">사용자 정보 관리</p></a></li>
				<br>
				<li><a
					href="../newton_hotel/ReserServlet?command=all_user_reser_select">
					<p style="font-size:130%;">예약내역 관리</p></a>
				</li>
				<br>
			
				<li><a
					href="../newton_hotel/MemberServlet?command=admin_pwd_update&userid=${userid}">
					<p style="font-size:130%;">비밀번호 변경</p></a>
				</li>
				<br>
			</ul>
		</div>
		<div class="infoContainer"></div>
	</div>

	<!-- footer -->
	<div class="footer">
		<div class="col-md-6 footer-left">
			<img src="../newton_hotel/images/4.jpg" class="img-responsive" alt="">
			<div class="col-md-6 footer-left1">
				<img src="../newton_hotel/images/logo5.png" class="img-responsive" alt="">
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
				<img src="../newton_hotel/images/fo.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-right2">
				<img src="../newton_hotel/images/un.png" class="img-responsive" alt="">
			</div>
			<div class="clearfix"></div>
			<h6>Copyrights © 2021 Green All rights reserved</h6>
		</div>
		<div class="clearfix"></div>
	</div>
	<a href="#" id="toTop" style="display: block;"><span
		id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover"
		style="opacity: 0;"> </span></a>
	<!-- footer -->
</body>
</html>