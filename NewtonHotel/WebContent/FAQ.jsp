<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/mypage.css" rel="stylesheet" type="text/css" media="all" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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
					<li><a href="trip/hotel_intro.jsp">호텔 소개</a></li>
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
						<li><a
							href="MemberServlet?command=mypage_action&userid=${userid }">마이페이지</a></li>
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
	</div>
	<!-- header -->
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-2">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><h1>고객센터</h1></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="AskServlet?command=ask_list"><h3>1:1문의</h3></a></td>
						</tr>
						<tr>
							<td><a href="reviewsServlet?command=reviews_list"><h3>후기
										게시판</h3></a></td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="col-1"></div>
			<div class="col">

				<style>
#oneOnone {
	height: 30px;
	float: right;
	margin-top: 10px;
}

.answer {
	display: none;
	padding-bottom: 30px;
}

#faq-title {
	font-size: 25px;
}

.faq-content {
	border-bottom: 1px solid #e0e0e0;
}

.question {
	font-size: 19px;
	padding: 30px 0;
	cursor: pointer;
	border: none;
	outline: none;
	background: none;
	width: 100%;
	text-align: left;
}

.question:hover {
	color: #2962ff;
}

[id$="-toggle"] {
	margin-right: 15px;
}

.moreBtn {
	float: right;
	margin-right: 20px;
	font-style: normal !important;
}
</style>

				<span id="faq-title">자주 묻는 질문(FAQ)</span>
				<div class="faq-content">
					<button class="question" id="que-1">
						<span id="que-1-toggle" class="moreBtn">+</span><span>전화로도
							예약해도 되나요?</span>
					</button>
					<div class="answer" id="ans-1">네 가능합니다 ☎15XX-XXXX로 전화로 예약주시면
						됩니다</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-2">
						<span id="que-2-toggle" class="moreBtn">+</span><span>호텔 객실
							내 투숙 가능한 인원은 몇 명인가요?</span>
					</button>
					<div class="answer" id="ans-2">호텔 객실의 점유 용적은 객실 유형에 따라 달라집니다.
						호텔은 추가로 투숙하는 인원에 대해 부가 수수료를 부과할 수 있습니다. 해당 호텔에 연락해 직접 확인하거나 당사에
						연락하시면 도움을 받으실 수 있습니다.</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-3">
						<span id="que-3-toggle" class="moreBtn">+</span><span>호텔 객실
							요금은 일일 아침식사를 포함하나요?</span>
					</button>
					<div class="answer" id="ans-3">별도의 요건이 명시되지 않는 한, 일일 아침식사는
						포함되지 않습니다.</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-4">
						<span id="que-4-toggle" class="moreBtn">+</span><span>주차장은
							무료인가요?</span>
					</button>
					<div class="answer" id="ans-4">주차장은 무료입니다.</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-5">
						<span id="que-5-toggle" class="moreBtn">+</span><span>애완동물
							동반 숙박이 가능한가요?</span>
					</button>
					<div class="answer" id="ans-5">대단히 죄송합니다만, 애완동물 동반 투숙은
						불가합니다.야외광장이나 주차장 등에서는 동반이 가능합니다.</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-6">
						<span id="que-6-toggle" class="moreBtn">+</span><span>휠체어,
							유모차의 대여가 가능한가요?</span>
					</button>
					<div class="answer" id="ans-6">네, 리조트 내에서 이용이 가능한 휠체어와 유모차가
						준비되어 있습니다. 이용을 원하시면, 사전에 프론트데스크로 연락해 주시기 바랍니다.</div>
				</div>
				<div class="faq-content">
					<button class="question" id="que-7">
						<span id="que-7-toggle" class="moreBtn">+</span><span>2박 이상
							투숙하는 경우 객실 청소는 어떻게 되나요?</span>
					</button>
					<div class="answer" id="ans-7">매일 11시~15시 사이 객실 청소가 진행됩니다.침대
						시트, 이불 및 베개 커버는 이틀에 한번씩 교체하고 있습니다. 청소가 필요하지 않은 고객님께서는 객실 내 비치되어 있는
						'THINK NATURE CARD'를 복도측 도어 손잡이에 걸어주시기 바랍니다.</div>
				</div>
				<button type="button"
					onclick="location.href='AskServlet?command=ask_write_change_window'"
					id="oneOnone">1:1문의하기</button>


<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
			</div>
			<div class="col-1"></div>
		</div>
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