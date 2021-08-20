<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
		font-size: 10pt;
	}
select { 
	width: 100px; /* 원하는 너비설정 */ 
	height: 35px;
	border: 1px solid #999; 
	border-radius: 3px; /* iOS 둥근모서리 제거 */ 
	}
</style>
<script>
	function getCheckboxValue() {
		var chkbox = document.getElementsByName('ch');
		var chk = false;
		var cnt = 0;
		var idx = 0;
		
		for (var i = 0; i < chkbox.length; i++) {
			if (chkbox[i].checked) {
				chk = true;
				cnt = cnt + 1;
				idx = i;
			} else {
				chk = false;
			}
		}
		
		if(chkbox[idx].checked){
			chk = true;
		}
		if (chk && cnt == 1) {
			return true;
		} else if(!chk){
			alert("사용자를 선택하십시오.");
			return false;
		} else if(cnt != 1){
			alert("체크박스를 1개만 선택하십시오.");
			return false;
		}

	}
</script>
<script>
	function getCheckboxValue1() {
		var chkbox = document.getElementsByName('ch');
		var chk = false;
		var cnt = 0;
		var idx = 0;
		var chkId = "";
	    var size = document.getElementsByName("ch").length;
	    
	    for(var i = 0; i < size; i++){
	        if(document.getElementsByName("ch")[i].checked == true){
	            chkId = document.getElementsByName("ch")[i].value;
	            console.log(chkId);
	            chk = true;
	            cnt = cnt + 1;
	            idx = i;
	        } else {
	        	chk = false;
	        }
	    }
		
		if(chkbox[idx].checked){
			chk = true;
		}
		if (chk && cnt == 1) {
			if(confirm("정말 삭제하시겠습니까?")){
				location.href="MemberServlet?command=user_info_delete&userid=" + chkId;
			} else {
				
			}
		} else if(!chk){
			alert("사용자를 선택하십시오.");
		} else if(cnt != 1){
			alert("체크박스를 1개만 선택하십시오.");
		}
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
				<a href="login.do?userid=admin"> <img
					src="../newton_hotel/images/logo.png" class="img-responsive" alt="" />
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
		<h2 style="text-align: center;">사용자 개인정보 조회</h2>
		<div class="listContainer">
			<div
				style="padding: 10px; margin: 0 auto; width: 1100px; height: auto;">
				<div style="text-align: right;">
					<form name="search" method="post" action="MemberServlet?command=member_search_action">
						<fieldset>
							<label>분류</label> <select name="keyField">
								<option value="userid">아이디</option>
								<option value="name">이름</option>
							</select>
							
							 <label>검색어</label> <input type="text" name="keyWord" class="input1">&nbsp;
							<input type="submit" value="검색" class="button1">
						</fieldset>
					</form>
				</div>
				<form action="MemberServlet?command=user_pwd_update" method="post" name="frm">
					<table class="list" border="1" style="text-align: center">
						<tr>
							<th>이름</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>선택</th>
						</tr>
		
						<c:forEach var="member" items="${memberList }">
							<tr class="record">
								<td>${member.name }</td>
								<td>${member.userid }</td>
								<td>${member.pwd }</td>
								<td>${member.email }</td>
								<td>${member.phone }</td>
								<td>${member.map }</td>
								<td><input type="checkbox" name="ch" value="${member.userid }">
								</td>	
							</tr>
						</c:forEach>
					</table>
					<br> 
					<input type="submit" class="button" value="비밀번호 변경" onclick="return getCheckboxValue()">
				</form>
					
					<input type="button" class="button" value="계정 삭제" onclick="getCheckboxValue1()">
			</div>
		</div>
	</div>
	<br>
	<br>
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