<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE HTML>
<html>
<head>
<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
   Template | 404 :: w3layouts</title>
   <link rel="stylesheet" type="text/css" href="css/shopping.css">
   <link href="css/bootstrap.css" rel="stylesheet" type="text/css"   media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
   media="screen" />
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

	<div id="wrap" align="center">
		<h1>공 지 사 항</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="BoardServlet?command=board_write_form">게시글 등록</a></td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<c:forEach var="board" items="${boardList }">
				<tr class="record">
					<td>${board.num }</td>
					<td><a href="BoardServlet?command=board_view&num=${board.num}">
							${board.title } </a></td>
					<td>${board.name}</td>
					<td><fmt:formatDate value="${board.writedate }" /></td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
		</table>
		<br><br><br><br><br><br><br>
	</div>
	<br><br>
	
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


	