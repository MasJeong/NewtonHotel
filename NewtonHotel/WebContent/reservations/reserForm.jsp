<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="keywords"
	content="Riviera Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년',
		minDate : 0,
		maxDate : new Date('2021-09-12')
	});

	$(function() {
		$("#datepicker1, #datepicker2").datepicker();
	});
</script>

<style type="text/css">
	table {
		font-size: 12pt;
	}
	.input1 {
		width: 150px;
		height: 35px;
		border-radius: 3px;
		border: 1px solid #999;
	
	}
</style>
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
	</div>
	<!-- header -->

	<p class="fs-1" align="center">호텔, 날짜, 인원 선택</p>

	<br>
	<div
		style="padding: 10px; margin: 0 auto; width: 1200px; height: auto;">
		<form action="reservations/reserView.jsp" method="post">
			<input type="hidden" name="userid" value="${userid }">
			<table class="table" align="center">
				<thead>
					<tr>
						<th scope="col">권역별 호텔 선택</th>
						<th scope="col">날짜 선택</th>
						<th scope="col">룸 선택</th>
						<th scope="col">가격</th>
						<th scope="col">성인</th>
						<th scope="col">어린이</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><select id="hotelName" name="hotelName" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="서울뉴튼호텔" selected="selected">서울뉴튼호텔</option>
								<option value="제주뉴튼호텔">제주뉴튼호텔</option>
								<option value="도쿄뉴튼호텔">도쿄뉴튼호텔</option>
						</select></td>
						<td>날짜 선택: <input type="text" id="datepicker1" name="reservation_in" autocomplete="off" class="input1"> ~ 
						<input type="text" id="datepicker2" name="reservation_out" autocomplete="off" class="input1"></td>
						<td>
						<c:if test="${roomNum eq 1}">	
						<select id="roomType" name="roomType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="스위트 트윈">스위트 트윈</option>
								<option value="스위트 더블" selected="selected">스위트 더블</option>
								<option value="디럭스 트윈">디럭스 트윈</option>
								<option value="디럭스 더블" >디럭스 더블</option>
								<option value="스탠다드 트윈">스탠다드 트윈</option>
								<option value="스탠다드 더블">스탠다드 더블</option>
						</select>
						</c:if>
						<c:if test="${roomNum eq 2}">	
						<select id="roomType" name="roomType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="스위트 트윈">스위트 트윈</option>
								<option value="스위트 더블" >스위트 더블</option>
								<option value="디럭스 트윈">디럭스 트윈</option>
								<option value="디럭스 더블" selected="selected">디럭스 더블</option>
								<option value="스탠다드 트윈">스탠다드 트윈</option>
								<option value="스탠다드 더블">스탠다드 더블</option>
						</select>
						</c:if>
						<c:if test="${roomNum eq 3}">	
						<select id="roomType" name="roomType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="스위트 트윈">스위트 트윈</option>
								<option value="스위트 더블">스위트 더블</option>
								<option value="디럭스 트윈">디럭스 트윈</option>
								<option value="디럭스 더블" >디럭스 더블</option>
								<option value="스탠다드 트윈">스탠다드 트윈</option>
								<option value="스탠다드 더블" selected="selected">스탠다드 더블</option>
						</select>
						</c:if>
						<c:if test="${roomNum eq null}">	
						<select id="roomType" name="roomType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="스위트 트윈">스위트 트윈</option>
								<option value="스위트 더블">스위트 더블</option>
								<option value="디럭스 트윈">디럭스 트윈</option>
								<option value="디럭스 더블" selected="selected">디럭스 더블</option>
								<option value="스탠다드 트윈">스탠다드 트윈</option>
								<option value="스탠다드 더블" >스탠다드 더블</option>
						</select>
						</c:if>
						</td>

						<td>
  							<input type="text" class="form-control" name="price" id="price" readonly="readonly" style="font-size:18px;">
  						</td>
						
						<td><select id="" name="adult" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="1">성인 1</option>
								<option value="2">성인 2</option>
								<option value="3">성인 3</option>
								<option value="4">성인 4</option>
						</select></td>
						<td><select id="" name="child" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="font-size:14px;">
								<option value="1">어린이 1</option>
								<option value="2">어린이 2</option>
								<option value="3">어린이 3</option>
								<option value="4">어린이 4</option>
						</select></td>
					</tr>
				</tbody>
			</table>
			<div style='width: 80px; float: right;'>
				<input type="submit" class="button" value="예약하기">
			</div>
		</form>
		<br>
		<br>
	</div>
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
				<img src="images/fo.png" class="img-responsive" alt="">
			</div>
			<div class="col-md-6 footer-right2">
				<img src="images/un.png" class="img-responsive" alt="">
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
<script>
	$("#roomType").change(function() {
		var roomType = $("#roomType option:selected").val();
		$.ajax({
			type : "post",
			url : "RoomServlet?command=roomSelect",
			data : {
				roomType : roomType
			},
			success : function(data) {
				$("#price").val(data);
			},
			error : function(xhr, status, error) {
			}

		})
	});
</script>
</html>
