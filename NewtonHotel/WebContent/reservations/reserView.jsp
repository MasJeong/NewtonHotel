<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
	Template | 404 :: w3layouts</title>
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css"
	media="all" />
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

<script type="text/javascript" src="../js/reservation.js"></script>
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
<script>
	function reserCancle(){
		alert("예약이 취소되었습니다.");
		location.href="reserIntro.jsp";
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
	<p class="fs-1" align="center">예약 확인 및 결제</p>
	<br>
	<div
		style="padding: 10px; margin: 0 auto; width: 800px; height: auto;">
	<form action="../ReserServlet?command=reser_view" method="post">
		<table align="center" class="table">
			<tr>
				<td>
				<input type="hidden" name="userName" value="${name }">
				<label for="userid"> 아이디: </label>
				<input type="hidden" name="userid" value="${param.userid }">
				${param.userid }	</td>
				<td><label for="reservation_in"> 예약 날짜: </label>
					<input type="hidden" name="reservation_in" value="${param.reservation_in }">
					<input type="hidden" name="reservation_out" value="${param.reservation_out}">
					${param.reservation_in} ~ ${param.reservation_out }</td>
			</tr>
			<tr>
				<td><label for="adult"> 성인: </label>
					<input type="hidden" name="adult" value="${param.adult }">
				 	${param.adult} 명</td>
				<td><label for="child"> 어린이: </label>
					<input type="hidden" name="child" value="${param.child }">
					 ${param.child} 명</td>
			</tr>
			<tr>
				<td><label for="price"> 가격: </label> 
				<input type="hidden" name="price" value="${param.price }">
				${param.price } 원</td>
				
				<td><label for="hotelName"> 호텔명: </label> 
				<input type="hidden" name="hotelName" value="${param.hotelName }">
				${param.hotelName }</td>
			</tr>
			<tr>
				<td><label for="roomType"> 룸 타입: </label> 
				<input type="hidden" name="roomType" value="${param.roomType }">
				${param.roomType }</td>
				
				<td><label for="check"> 결제 확인: </label> 결제를 진행해 주십시오.</td>
			</tr>
		</table>
			<input type="button" class="button1" value="취소하기" onclick="reserCancle()">
			<input type="submit" class="button" value="결제하기" onclick="reservationSuccess()">
			
	</form>
	</div>
	<br><br>
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