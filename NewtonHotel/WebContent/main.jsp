<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
	Template | 404 :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Riviera Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!-- 폰트 -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700,900' rel='stylesheet' type='text/css'>
<!-- 폰트 -->

<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

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

<script>
	function loginCheck(){
		alert("로그인을 해주세요.");
	}
</script>

</head>
<body>

	<!-- header -->
	<div class="banner">
		<div class="container">
			<div class="head-nav">
				<span class="menu"> </span>
				<ul class="cl-effect-7">
					<li><a href="main.jsp">호텔 소개</a></li>
					<li><a href="room/accomo.jsp">객실 소개</a></li>
					<li><a href="rest/facil.jsp">시설 소개</a></li>
					<li><a href="trip/minsok.jsp">주변 관광지</a></li>
					<li><a href="FAQ.jsp">고객센터</a></li>
					<li><a href="reservations/reserIntro.jsp">예약하기</a></li>
					<li><a href="Event/Eventindex.jsp">이벤트</a></li>

					<c:set var="userid" value="${userid }" />
					<c:if test="${userid eq null}">
						<li><a href="login.do">로그인</a></li>
						<li><a href="join.do">회원가입</a></li>
					</c:if>

					<c:if test="${userid ne null && userid ne 'admin' }">
						<li><a href="logout.do">로그아웃</a></li>
						<!-- <li><a href="member/mypage.jsp">마이페이지</a></li> -->
						<li><a href="MemberServlet?command=mypage_action&userid=${userid }">마이페이지</a></li>
					</c:if>
					<c:if test="${userid eq 'admin' }">
						<li><a href="logout.do">로그아웃</a></li>
						<!-- <li><a href="member/mypage.jsp">마이페이지</a></li> -->
						<li><a href="login.do?userid=${userid }">관리자페이지</a></li>
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
				<a href="main.jsp"><img src="images/logo.png"
					class="img-responsive" alt="" /></a>
			</div>
			<div class="banner-info">
				<p>Enjoy the stupendous calm and peace of this tree-shaded
					location cradled by mountains where time stands still.choose ease,
					harmony and wellbeing over the hectic pace of today's lifestyle!</p>
			</div>
		</div>
		<br>
	</div>
	<!-- header -->
	<!-- ENCHANTMENT  -->
	<div class="ENCHANTMENT" id="ourresort">
		<div class="col-md-6 ENCHANTMENT-left">
			<img src="images/5.jpg" class="img-responsive" alt="">
		</div>
		<div class="col-md-6 ENCHANTMENT-right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="slider-info">
								<img src="images/logo1.png" class="img-responsive" alt="">
								<h3>ENCHANTMENT AND SPLENDOUR</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maecenas pellentesque justo ac velit facilisis convallis vel id
									nisi. Morbi hendrerit ac tellus eu luctus. Vestibulum
									ullamcorper elit eu eleifend posuere. Proin imperdiet nisl eu
									est vulputate, vel tincidunt lacus pretium.</p>
							</div>
						</li>
						<li>
							<div class="slider-info">
								<img src="images/logo1.png" class="img-responsive" alt="">
								<h3>ENCHANTMENT AND SPLENDOUR</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maecenas pellentesque justo ac velit facilisis convallis vel id
									nisi. Morbi hendrerit ac tellus eu luctus. Vestibulum
									ullamcorper elit eu eleifend posuere. Proin imperdiet nisl eu
									est vulputate, vel tincidunt lacus pretium.</p>
							</div>
						</li>
						<li>
							<div class="slider-info">
								<img src="images/logo1.png" class="img-responsive" alt="">
								<h3>ENCHANTMENT AND SPLENDOUR</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Maecenas pellentesque justo ac velit facilisis convallis vel id
									nisi. Morbi hendrerit ac tellus eu luctus. Vestibulum
									ullamcorper elit eu eleifend posuere. Proin imperdiet nisl eu
									est vulputate, vel tincidunt lacus pretium.</p>
							</div>
						</li>
					</ul>
				</div>
			</section>
			
			<script defer src="js/jquery.flexslider.js"></script>
			<!-- 슬라이드  -->
			<script type="text/javascript">
				$(function() {
					SyntaxHighlighter.all();
				});
				$(window).load(function() {
					$('.flexslider').flexslider({
						animation : "slide",
						start : function(slider) {
							$('body').removeClass('loading');
						}
					});
				});
			</script>
			
			<!-- slider -->
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- ENCHANTMENT  -->
	<!-- wonder -->
	<div class="wonder" id="">
		<div class="col-md-2 wonder-left">
			<img src="images/2.jpg" class="img-responsive" alt="">
		</div>
		<div class="col-md-4 wonder-mid">
			<img src="images/logo1.png" class="img-responsive" alt="">
			<h5>ACCOMMODATION</h5>
			<h3>EMOTIONS AND WONDER</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas pellentesque justo ac velit facilisis</p>
		</div>
		<div class="col-md-6 wonder-right">
			<img src="images/bed2.jpg" class="img-responsive" alt="">
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- wonder -->
	<!-- rooms -->
	<div class="rooms" id="suites">
		<div class="col-md-4 rooms-1">
			<div class="room-info">
				<img src="images/logo2.png" class="img-responsive" alt="">
			</div>
			<div class="room-info1">
				<ul>
				<c:if test="${userid eq null}">	
					<li><a href="login.do" onclick="loginCheck()"><i class="search"></i>Reservation</a></li>
				</c:if>
				<c:if test="${userid ne null}">	
						<li><a href="ReserServlet?command=reser_write_form&roomType=sweet" ><i class="search"></i>Reservation</a></li>
				</c:if>
				</ul>
			</div>
		</div>
		<div class="col-md-4 rooms-2">
			<div class="room-info">
				<img src="images/logo3.png" class="img-responsive" alt="">
			</div>
			<div class="room-info1">
				<ul>
					<c:if test="${userid eq null}">	
						<li><a href="login.do" onclick="loginCheck()"><i class="search"></i>Reservation</a></li>
					</c:if>
					<c:if test="${userid ne null}">	
						<li><a href="ReserServlet?command=reser_write_form&roomType=deluxe" ><i class="search"></i>Reservation</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<div class="col-md-4 rooms-3">
			<div class="room-info">
				<img src="images/logo4.png" class="img-responsive" alt="">
			</div>
			<div class="room-info1">
				<ul>
					<c:if test="${userid eq null}">	
						<li><a href="login.do" onclick="loginCheck()"><i class="search"></i>Reservation</a></li>
					</c:if>
					<c:if test="${userid ne null}">	
						<li><a href="ReserServlet?command=reser_write_form&roomType=standard" ><i class="search"></i>Reservation</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- rooms -->
	<!-- services -->
	<div class="services" id="services">
		<div class="col-md-6 services-left">
			<img src="images/logo1.png" class="img-responsive" alt="">
			<h2>SERVICES</h2>
			<div class="col-md-3 services-left1">
				<h5>FAMILIES</h5>
				<ul>
					<li><a href="#">Facilities available for children</a></li>
					<li><a href="#">Children's bathrobes</a></li>
					<li><a href="#">Children's slippers</a></li>
					<li><a href="#">Sweets</a></li>
					<li><a href="#">Cartoon DVD</a></li>
					<li><a href="#">Babysitting</a></li>
					<li><a href="#">Highchairs </a></li>
				</ul>
			</div>
			<div class="col-md-3 services-left1">
				<h5>Disabled Access</h5>
				<p>Thanks to its refurbishment, completed in 2000, Resort offers
					the necessary facilities and equipment to welcome disabled clients
					in the best conditions. An adapted entrance, lifts and six rooms
					were especially designed for them.</p>
			</div>
			<div class="col-md-3 services-left1">
				<h5>Pet friendly hotel</h5>
				<p>Complimentary pet basket (for cats and dogs) available,
					Custom-designed bowl with the name of the pet can be easily
					arranged in advance, Specific menus and food</p>
			</div>
			<div class="col-md-3 services-left1">
				<h5>Concierge</h5>
				<p>From a simple restaurant booking to the complete organisation
					of a personalised stay, our Concierge are available 24 hours a day
					to meet your requirements. Their secret address book makes the
					least of your desires</p>
			</div>
		</div>
		<div class="col-md-6 services-right">
			<img src="images/3.jpg" class="img-responsive" alt="">
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- services -->

	<!-- guests -->
	<div class="guests">
		<div class="container">
			<img src="images/logo5.png" class="img-responsive" alt="">
			<h3>BE OUR GUESTS</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Maecenas pellentesque justo ac velit facilisis convallis vel id</p>
		</div>
	</div>
	<!-- guests -->
	<!-- footer -->
	<div class="footer">
		<div class="col-md-6 footer-left">
			<img src="images/4.jpg" class="img-responsive" alt="">
			<div class="col-md-6 footer-left1">
				<img src="images/logo5.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-left2">
				<ul>
					<li>rooms Resort</li>
					<li>NEWTON (KOREA)</li>
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
				<img src="images/fo.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-right2">
				<img src="images/un.png" class="img-responsive" alt="">
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