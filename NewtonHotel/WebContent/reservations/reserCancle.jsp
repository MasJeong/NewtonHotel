<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
	Template | 404 :: w3layouts</title>
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta name="keywords"
	content="Riviera Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" /> -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" /> -->

<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>

<script type="text/javascript">

	function passCheck() {
		if(document.frm.pwd.value == "${pwdSelect}"){
			alert("예약이 취소되었습니다.");
			return true;
		} else {
			alert("비밀번호가 일치하지 않습니다.");
			frm.pwd.focus();
			return false;
		}
	}
</script>
<style>
.button1 {
	background-color: #ABABAB;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	border-radius: 5px;
	font-size: 16px;
	float: right;
	}
.button {
	background-color: #368AFF;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	font-size: 16px;
	border-radius: 5px;
	float: right;
}	
</style>
<style type="text/css">
	table {font-size: 12pt;}
</style>
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
	</div>
	<!-- header -->

	<div id="divPosition">
		<p class="fs-1" align="center">예약 정보 조회</p>
		<div style="padding: 10px; margin: 0 auto; width: 900px; height: auto;">
		<form method="post" action="ReserServlet?command=reser_cancle_action" name="frm">
			<input type="hidden" name="reservation_number" value="${reserSelect.reservation_number }">
			<input type="hidden" name="userid" value="${reserSelect.userId }">
			<table align="center" class="table">
				<tr>
					<td><label for="userid"> 아이디: </label> ${reserSelect.userId }</td>
					<td><label for="reservation_in"> 예약 날짜: </label> <fmt:formatDate
							pattern="yyyy-MM-dd" value="${reservation_in }" />~ <fmt:formatDate
							pattern="yyyy-MM-dd" value="${reservation_out }" /></td>
				</tr>
				<tr>
					<td><label for="adult"> 성인: </label> ${reserSelect.adult} 명</td>
					<td><label for="child"> 어린이: </label> ${reserSelect.child} 명</td>
				</tr>
				<tr>
					<td><label for="hotelName"> 호텔명: </label>
						${reserSelect.hotelName }</td>
					<td><label for="price"> 가격: </label> ${reserSelect.price } 원</td>
				</tr>
				<tr>
					<td><label for="roomType"> 방 종류: </label>
						${reserSelect.roomType }</td>
					<td><label for="reservation_number"> 예약 번호: </label>
						${reserSelect.reservation_number }</td>
				</tr>
				<tr>
					<td>비밀번호를 입력해주세요. <input type="password" name="pwd" size="30"
						maxlength=20></td>
					<td></td>
				</tr>
			</table>
			<br>
			<p class="fs-2" align="center">예약 취소를 희망할 경우, '예약취소' 버튼을 클릭하십시오.</p>
			<input type="button" class="button1" value="뒤로가기" onclick="goBack();">
			<input type="submit" class="button" value="예약 취소" onclick="return passCheck()">
		</form>
		</div>
	</div><br><br><br>

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