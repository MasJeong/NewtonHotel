<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="reservation.dao.ReserDAO"%>
<%@ page import="reservation.dto.ReserVO"%>
<%@ page import="java.util.List"%>
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
<link href="../newton_hotel/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all">
<link href="../newton_hotel/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="../newton_hotel/css/mypage.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="../newton_hotel/css/admin.css" rel="stylesheet"
	type="text/css" />
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
<link rel="stylesheet" href="../newton_hotel/css/flexslider.css"
	type="text/css" media="screen" />
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
<style>
a:link {
	color: blue;
	text-decoration: none;
}

a:visited {
	color: blue;
}

a:hover {
	color: green;
	text-decoration: underline;
}

a:active {
	color: white;
	background-color: green;
}
</style>
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
<style>
.button {
	background-color: #368AFF;
	border: none;
	color: white;
	padding: 15px 30px;
	font-size: 16px;
	border-radius: 5px;
	float: right;
}
.input1 {
	width: 250px;
	height: 35px;
	background-color: white;
	
	border-radius: 3px;
	border: 1px solid #999;
	font-size: 16px;
}
.button1 {
	background-color: #ABABAB;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	border-radius: 5px;
	font-size: 12px;
	float: right;
}
table {
		font-size: 9pt;
	}
select { 
	width: 100px; /* 원하는 너비설정 */ 
	height: 35px;
	border: 1px solid #999; 
	border-radius: 3px; /* iOS 둥근모서리 제거 */ 
	}
</style>
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

	<div class="wrap">
		<h2 style="text-align: center;">모든 사용자 예약내역 조회</h2>
		<div class="listContainer">
			<div style="padding: 10px; margin: 0 auto; width: 1100px; height: auto;">
				<div style="text-align: right;">
					<form name="search" method="post" action="ReserServlet?command=search_action">
						<fieldset>
							<label>분류</label> 
							<select name="keyField">
								<option value="userId">아이디</option>
								<option value="userName">이름</option>
							</select> 
							<label>검색어</label> 
							<input type="text" name="keyWord" size="40" class="input1"> 
							<input type="submit" value="검색" class="button1">
						</fieldset>
					</form>
				</div>
				<table class="list" border="1" style="text-align: center">
					<tr>
						<th>순번</th>
						<th>예약번호</th>
						<th width="100">아이디</th>
						<th>회원 이름</th>
						<th>호텔명</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>룸타입</th>
						<th>가격</th>
						<th>성인</th>
						<th>어린이</th>
						<th>예약취소유무</th>
					</tr>

					<c:forEach var="reser" items="${reserList }">
						<tr class="record">
							<td>${reser.reserId }</td>
							<td>${reser.reservation_number }</td>
							<td><a href="MemberServlet?command=user_info_select&userId=${reser.userId}">
									${reser.userId } </a></td>
							<td>${reser.userName }</td>
							<td>${reser.hotelName }</td>

							<td><fmt:parseDate value='${reser.reservation_in}' var='reservation_in' pattern='yyyy-MM-dd' /> 
							<fmt:formatDate	pattern="yyyy-MM-dd" value="${reservation_in }" /></td>
							<td><fmt:parseDate value='${reser.reservation_out}'	var='reservation_out' pattern='yyyy-MM-dd' /> 
									<fmt:formatDate	pattern="yyyy-MM-dd" value="${reservation_out }" /></td>
							<td>${reser.roomType }</td>
							<td>${reser.price }</td>
							<td>${reser.adult }</td>
							<td>${reser.child }</td>
							<td>${reser.switch_num }</td>
						</tr>
					</c:forEach>
				</table>
				<br>
				<%	
				ReserDAO reserDAO = ReserDAO.getInstance();
				int pageNumber = (Integer)request.getAttribute("page");
				if(reserDAO.nextPage(pageNumber + 1)){
				%>	
					<input type="button" class="button" value="다음"
					onclick="location.href='ReserServlet?command=all_user_reser_select&pageNumber=<%=pageNumber + 1%>'">
				<%
					} 
					if(pageNumber != 1){
				%>	
					<input type="button" class="button" value="이전"
					onclick="location.href='ReserServlet?command=all_user_reser_select&pageNumber=<%=pageNumber - 1%>'">
				<%
					}
				%>
			</div>
		</div>
	</div>
	<br><br>
	<!-- footer -->
	<div class="footer">
		<div class="col-md-6 footer-left">
			<img src="../newton_hotel/images/4.jpg" class="img-responsive" alt="">
			<div class="col-md-6 footer-left1">
				<img src="../newton_hotel/images/logo5.png" class="img-responsive"
					alt="">
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
				<img src="../newton_hotel/images/fo.png" class="img-responsive"
					alt="">
			</div>
			<div class="col-md-6 footer-right2">
				<img src="../newton_hotel/images/un.png" class="img-responsive"
					alt="">
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