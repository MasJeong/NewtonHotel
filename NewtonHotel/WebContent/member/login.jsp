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
<title>Riviera A Hotel Category Flat Bootstarp Resposive Website
	Template | 404 :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/mypage.css" rel="stylesheet" type="text/css" media="all" />
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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

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
<script>
	function loginCheck() {
		if (document.frm.userid.value.length == 0) {
			alert("아이디를 입력하십시오.");
			frm.userid.focus();
			return false;
		}
		if (document.frm.pwd.value == "") {
			alert("비밀번호를 입력하십시오.");
			frm.pwd.focus();
			return false;
		}
		if(document.frm.userid.value == "" || document.frm.pwd.value == ""){
			alert("아이디 또는 비밀번호가 틀렸습니다.");
			return false;
		}
		return true;
	}
</script>
<style>
.button1 {
	background-color: #ABABAB;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	font-size: 15px;
	border-radius: 5px;
	float: left;
	width: 50%;
	height: 50px;
}

.button {
	background-color: #368AFF;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	font-size: 15px;
	border-radius: 5px;
	float: left;
	width: 50%;
	height: 50px;
}

.kakaoButton {
	width: 100%;
	height: 60px;
}
</style>

<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('7893712541f28093cd78a5ddccef79a7'); 
console.log(Kakao.isInitialized() + " sdk 초기화 여부");

function kakaoLogin() {
    Kakao.Auth.login({
        success: function (response) {
          Kakao.API.request({
            url: '/v2/user/me',
            success: function (response) {
          	  console.log(response)
          	  alert("안녕하세요. " + response.kakao_account.profile.nickname + "님. 카카오 계정으로 로그인 되셨습니다.")
          	  location.href="login.do?username=" + response.kakao_account.profile.nickname
            },
            fail: function (error) {
              console.log(error)
            },
          })
        },
        fail: function (error) {
          console.log(error)
        },
      })
    }
  

function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        	alert("카카오 계정이 로그아웃 되셨습니다.")
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
  
</script>

<!--  네이버 스크립트 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>



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
					<li><a href="login.do">로그인</a></li>
					<li><a href="join.do">회원가입</a></li>

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
	<div style="padding: 10px; margin: 0 auto; width: 350px; height: auto;">
		<form action="login.do" method="post" name="frm">
			<h3 style="text-align: center;">로그인 화면</h3>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="아이디"
					name="userid" size=50 autocomplete="off">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" placeholder="비밀번호"
					name="pwd" size=50>
			</div>
			<input type="submit" class="button" value="로그인"
				onclick="return loginCheck()"> <input type="button"
				class="button1" value="회원 가입" onclick="location.href='join.do'">
		</form>



		<!-- javascript:void(0)은 a태그 기능x onclick 기능 살리기 -->
		<a href="javascript:void(0)" onclick="kakaoLogin();"> <img
			src="images/kakao_login_large_wide.png" class="kakaoButton" alt="" />
		</a> 
		<a href="javascript:void(0)" onclick="kakaoLogout();"> 
		<img src="images/kakao_logout_large_wide.png" class="kakaoButton" alt="" />
		</a>
	
		<!--  네이버 -->
		<div id="naverIdLogin"></div>
		
		<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "5VWL74JECH7XHHfSzuGH",
			callbackUrl: "http://localhost:8181/newton_hotel/callback.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 70} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();

</script>
<!-- // 네이버아이디로로그인 초기화 Script -->
		
	</div>
	<br>
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

</html>