<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accomodation</title>

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<link rel="stylesheet" href="../css/flexslider.css" type="text/css"
	media="screen" />
<script src="../s/jquery.min.js"></script>
<script src="../js/modernizr.custom.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
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
		$().UItoTop({ easingType: 'easeOutQuart' });
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
					<li><a href="../trip/hotel_intro.jsp">호텔 소개</a></li>
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
					<c:if test="${userid eq 'admin' }">
						<li><a href="../logout.do">로그아웃</a></li>
						<!-- <li><a href="member/mypage.jsp">마이페이지</a></li> -->
						<li><a href="../login.do?userid=${userid }">관리자페이지</a></li>
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
	<br>
	<br>
	<br>
	<br>

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://alleehotel.com/xmlrpc.php">
	<title>Korean Folk Village &#8211; 얼레이호텔</title>

	<!-- WordPress KBoard plugin 5.3.4 - http://www.cosmosfarm.com/products/kboard -->
	<link rel="alternate"
		href="http://alleehotel.com/wp-content/plugins/kboard/rss.php"
		type="application/rss+xml" title="얼레이호텔 &raquo; KBoard 통합 피드">
	<!-- WordPress KBoard plugin 5.3.4 - http://www.cosmosfarm.com/products/kboard -->

	<link rel='dns-prefetch' href='//fonts.googleapis.com' />
	<link rel='dns-prefetch' href='//s.w.org' />
	<link rel="alternate" type="application/rss+xml"
		title="얼레이호텔 &raquo; 피드" href="http://alleehotel.com/feed/" />
	<link rel="alternate" type="application/rss+xml"
		title="얼레이호텔 &raquo; 댓글 피드"
		href="http://alleehotel.com/comments/feed/" />
	<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/alleehotel.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.17"}};
			!function(t,a,e){var r,i,n,o=a.createElement("canvas"),l=o.getContext&&o.getContext("2d");function c(t){var e=a.createElement("script");e.src=t,e.defer=e.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(e)}for(n=Array("flag","emoji4"),e.supports={everything:!0,everythingExceptFlag:!0},i=0;i<n.length;i++)e.supports[n[i]]=function(t){var e,a=String.fromCharCode;if(!l||!l.fillText)return!1;switch(l.clearRect(0,0,o.width,o.height),l.textBaseline="top",l.font="600 32px Arial",t){case"flag":return(l.fillText(a(55356,56826,55356,56819),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,56826,8203,55356,56819),0,0),e===o.toDataURL())?!1:(l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),e!==o.toDataURL());case"emoji4":return l.fillText(a(55358,56794,8205,9794,65039),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55358,56794,8203,9794,65039),0,0),e!==o.toDataURL()}return!1}(n[i]),e.supports.everything=e.supports.everything&&e.supports[n[i]],"flag"!==n[i]&&(e.supports.everythingExceptFlag=e.supports.everythingExceptFlag&&e.supports[n[i]]);e.supports.everythingExceptFlag=e.supports.everythingExceptFlag&&!e.supports.flag,e.DOMReady=!1,e.readyCallback=function(){e.DOMReady=!0},e.supports.everything||(r=function(){e.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",r,!1),t.addEventListener("load",r,!1)):(t.attachEvent("onload",r),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&e.readyCallback()})),(r=e.source||{}).concatemoji?c(r.concatemoji):r.wpemoji&&r.twemoji&&(c(r.twemoji),c(r.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
	<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link rel='stylesheet' id='bbse-popup-view-css'
		href='http://alleehotel.com/wp-content/plugins/bbs-e-popup/css/bbse-popup-style.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='post_grid_style-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/style-new.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='owl.carousel-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/owl.carousel.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='font-awesome-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/font-awesome.min.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='style-woocommerce-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/style-woocommerce.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='style.skins-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/global/css/style.skins.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='style.layout-css'
		href='http://alleehotel.com/wp-content/plugins/post-grid/assets/global/css/style.layout.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='rs-plugin-settings-css'
		href='http://alleehotel.com/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.4.5.1'
		type='text/css' media='all' />
	<style id='rs-plugin-settings-inline-css' type='text/css'>
#rs-demo-id {
	
}
</style>
	<link rel='stylesheet' id='siteorigin-panels-front-css'
		href='http://alleehotel.com/wp-content/plugins/siteorigin-panels/css/front-flex.css?ver=2.5.13'
		type='text/css' media='all' />
	<link rel='stylesheet' id='thim-awesome-css'
		href='http://alleehotel.com/wp-content/plugins/thim-framework/css/font-awesome.min.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='tp-hb-extra-css-css'
		href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/plugins/wp-hotel-booking-extra/inc/assets/css/site.css?ver=1.7.9.1'
		type='text/css' media='all' />
	<link rel='stylesheet' id='wp-hotel-booking-css'
		href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/css/hotel-booking.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='wp-hotel-booking-libaries-style-css'
		href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/css/libraries.css?ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='thim-css-style-css'
		href='http://alleehotel.com/wp-content/themes/sailing/assets/css/custom-style.css?ver=1.13.1.1'
		type='text/css' media='all' />
	<link rel='stylesheet' id='thim-style-css'
		href='http://alleehotel.com/wp-content/themes/sailing/style.css?ver=1.13.1.1'
		type='text/css' media='all' />
	<link rel='stylesheet' id='tf-google-webfont-roboto-css'
		href='//fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C300%2C300italic%2C400%2Citalic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic&#038;subset=greek-ext%2Cgreek%2Ccyrillic-ext%2Clatin-ext%2Clatin%2Cvietnamese%2Ccyrillic&#038;ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='tf-google-webfont-crimson-text-css'
		href='//fonts.googleapis.com/css?family=Crimson+Text%3A400%2Citalic%2C600%2C600italic%2C700%2C700italic&#038;subset=latin&#038;ver=4.8.17'
		type='text/css' media='all' />
	<link rel='stylesheet' id='kboard-editor-media-css'
		href='http://alleehotel.com/wp-content/plugins/kboard/template/css/editor_media.css?ver=5.3.4'
		type='text/css' media='all' />
	<link rel='stylesheet' id='kboard-skin-default-css'
		href='http://alleehotel.com/wp-content/plugins/kboard/skin/default/style.css?ver=5.3.4'
		type='text/css' media='all' />
	<script type="text/javascript">
        var ajax_url ="http://alleehotel.com/wp-admin/admin-ajax.php";
        </script>
	<script type="text/javascript">
            var hotel_settings = {
                ajax: 'http://alleehotel.com/wp-admin/admin-ajax.php',
                settings: {"review_rating_required":"1"},
                upload_base_url: 'http://alleehotel.com/wp-content/uploads',
                meta_key: {
                    prefix: '_hb_'
                },
                nonce: '2e906d0cda',
                timezone: '1627074490',
                min_booking_date: 1            }
        </script>
	<script type="text/javascript">
            var hotel_settings = {
                ajax: 'http://alleehotel.com/wp-admin/admin-ajax.php',
                settings: {"review_rating_required":"1"},
                upload_base_url: 'http://alleehotel.com/wp-content/uploads',
                meta_key: {
                    prefix: '_hb_'
                },
                nonce: '2e906d0cda',
                timezone: '1627074490',
                min_booking_date: 1            }
        </script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/bbs-e-popup/js/bbse-popup-common.js?ver=4.8.17'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var post_grid_ajax = {"post_grid_ajaxurl":"http:\/\/alleehotel.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/scripts.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/masonry.pkgd.min.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/owl.carousel.min.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/imagesloaded.pkgd.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.4.5.1'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.4.5.1'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var _wpUtilSettings = {"ajax":{"url":"\/wp-admin\/admin-ajax.php"}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/wp-util.min.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.11.4'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/jquery/ui/datepicker.min.js?ver=1.11.4'></script>
	<script type='text/javascript'>
jQuery(document).ready(function(jQuery){jQuery.datepicker.setDefaults({"closeText":"\ub2eb\uae30","currentText":"\uc624\ub298","monthNames":["1\uc6d4","2\uc6d4","3\uc6d4","4\uc6d4","5\uc6d4","6\uc6d4","7\uc6d4","8\uc6d4","9\uc6d4","10\uc6d4","11\uc6d4","12\uc6d4"],"monthNamesShort":["1\uc6d4","2\uc6d4","3\uc6d4","4\uc6d4","5\uc6d4","6\uc6d4","7\uc6d4","8\uc6d4","9\uc6d4","10\uc6d4","11\uc6d4","12\uc6d4"],"nextText":"\ub2e4\uc74c","prevText":"\uc774\uc804","dayNames":["\uc77c\uc694\uc77c","\uc6d4\uc694\uc77c","\ud654\uc694\uc77c","\uc218\uc694\uc77c","\ubaa9\uc694\uc77c","\uae08\uc694\uc77c","\ud1a0\uc694\uc77c"],"dayNamesShort":["\uc77c","\uc6d4","\ud654","\uc218","\ubaa9","\uae08","\ud1a0"],"dayNamesMin":["\uc77c","\uc6d4","\ud654","\uc218","\ubaa9","\uae08","\ud1a0"],"dateFormat":"yy-mm-dd","firstDay":0,"isRTL":false});});
</script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/libraries/owl-carousel/owl.carousel.min.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/libraries/camera/js/gallery.min.js?ver=4.8.17'></script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/js/select2.min.js?ver=4.8.17'></script>
	<link rel='https://api.w.org/' href='http://alleehotel.com/wp-json/' />
	<link rel="EditURI" type="application/rsd+xml" title="RSD"
		href="http://alleehotel.com/xmlrpc.php?rsd" />
	<link rel="wlwmanifest" type="application/wlwmanifest+xml"
		href="http://alleehotel.com/wp-includes/wlwmanifest.xml" />
	<meta name="generator" content="WordPress 4.8.17" />
	<link rel="canonical"
		href="http://alleehotel.com/home/korean-folk-village/" />
	<link rel='shortlink' href='http://alleehotel.com/?p=4716' />
	<link rel="alternate" type="application/json+oembed"
		href="http://alleehotel.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Falleehotel.com%2Fhome%2Fkorean-folk-village%2F" />
	<link rel="alternate" type="text/xml+oembed"
		href="http://alleehotel.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Falleehotel.com%2Fhome%2Fkorean-folk-village%2F&#038;format=xml" />
	<meta name="generator"
		content="Powered by Slider Revolution 5.4.5.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
	<style type="text/css" media="all" id="siteorigin-panels-layouts-head">/* Layout 4716 */
#pgc-4716-0-0 {
	width: 21.9716%;
	width: calc(21.9716% - ( 0.78028350515464 * 30px))
}

#pgc-4716-0-1 {
	width: 78.0284%;
	width: calc(78.0284% - ( 0.21971649484536 * 30px))
}

#pg-4716-0, #pg-4716-1, #pg-4716-2, #pg-4716-3, #pg-4716-4, #pl-4716 .so-panel
	{
	margin-bottom: 30px
}

#pgc-4716-1-0 {
	width: 21.9931%;
	width: calc(21.9931% - ( 0.78006872852234 * 30px))
}

#pgc-4716-1-1, #pgc-4716-1-2 {
	width: 39.0034%;
	width: calc(39.0034% - ( 0.60996563573883 * 30px))
}

#pgc-4716-2-0, #pgc-4716-3-0, #pgc-4716-4-0, #pgc-4716-5-0 {
	width: 22%;
	width: calc(22% - ( 0.78 * 30px))
}

#pgc-4716-2-1, #pgc-4716-2-2, #pgc-4716-3-1, #pgc-4716-3-2,
	#pgc-4716-4-1, #pgc-4716-4-2 {
	width: 39%;
	width: calc(39% - ( 0.61 * 30px))
}

#pgc-4716-5-1 {
	width: 78%;
	width: calc(78% - ( 0.22 * 30px))
}

#pl-4716 .so-panel:last-child {
	margin-bottom: 0px
}

#pg-4716-0.panel-no-style, #pg-4716-0.panel-has-style>.panel-row-style,
	#pg-4716-1.panel-no-style, #pg-4716-1.panel-has-style>.panel-row-style,
	#pg-4716-2.panel-no-style, #pg-4716-2.panel-has-style>.panel-row-style,
	#pg-4716-3.panel-no-style, #pg-4716-3.panel-has-style>.panel-row-style,
	#pg-4716-4.panel-no-style, #pg-4716-4.panel-has-style>.panel-row-style,
	#pg-4716-5.panel-no-style, #pg-4716-5.panel-has-style>.panel-row-style
	{
	-webkit-align-items: flex-start;
	align-items: flex-start
}

#pgc-4716-1-1, #pgc-4716-2-0, #pgc-4716-3-0, #pgc-4716-4-0 {
	align-self: auto
}

@media ( max-width :780px) {
	#pg-4716-0.panel-no-style, #pg-4716-0.panel-has-style>.panel-row-style,
		#pg-4716-1.panel-no-style, #pg-4716-1.panel-has-style>.panel-row-style,
		#pg-4716-2.panel-no-style, #pg-4716-2.panel-has-style>.panel-row-style,
		#pg-4716-3.panel-no-style, #pg-4716-3.panel-has-style>.panel-row-style,
		#pg-4716-4.panel-no-style, #pg-4716-4.panel-has-style>.panel-row-style,
		#pg-4716-5.panel-no-style, #pg-4716-5.panel-has-style>.panel-row-style
		{
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column
	}
	#pg-4716-0 .panel-grid-cell, #pg-4716-1 .panel-grid-cell, #pg-4716-2 .panel-grid-cell,
		#pg-4716-3 .panel-grid-cell, #pg-4716-4 .panel-grid-cell, #pg-4716-5 .panel-grid-cell
		{
		margin-right: 0
	}
	#pg-4716-0 .panel-grid-cell, #pg-4716-1 .panel-grid-cell, #pg-4716-2 .panel-grid-cell,
		#pg-4716-3 .panel-grid-cell, #pg-4716-4 .panel-grid-cell, #pg-4716-5 .panel-grid-cell
		{
		width: 100%
	}
	#pgc-4716-0-0, #pgc-4716-1-0, #pgc-4716-1-1, #pgc-4716-2-0,
		#pgc-4716-2-1, #pgc-4716-3-0, #pgc-4716-3-1, #pgc-4716-4-0,
		#pgc-4716-4-1, #pgc-4716-5-0 {
		margin-bottom: 30px
	}
	#pl-4716 .panel-grid-cell {
		padding: 0
	}
	#pl-4716 .panel-grid .panel-grid-cell-empty {
		display: none
	}
	#pl-4716 .panel-grid .panel-grid-cell-mobile-last {
		margin-bottom: 0px
	}
}
</style>
	<link rel="icon"
		href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1-32x32.png"
		sizes="32x32" />
	<link rel="icon"
		href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png"
		sizes="192x192" />
	<link rel="apple-touch-icon-precomposed"
		href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png" />
	<meta name="msapplication-TileImage"
		content="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png" />
	<script type="text/javascript">function setREVStartSize(e){
				try{ var i=jQuery(window).width(),t=9999,r=0,n=0,l=0,f=0,s=0,h=0;					
					if(e.responsiveLevels&&(jQuery.each(e.responsiveLevels,function(e,f){f>i&&(t=r=f,l=e),i>f&&f>r&&(r=f,n=e)}),t>r&&(l=n)),f=e.gridheight[l]||e.gridheight[0]||e.gridheight,s=e.gridwidth[l]||e.gridwidth[0]||e.gridwidth,h=i/s,h=h>1?1:h,f=Math.round(h*f),"fullscreen"==e.sliderLayout){var u=(e.c.width(),jQuery(window).height());if(void 0!=e.fullScreenOffsetContainer){var c=e.fullScreenOffsetContainer.split(",");if (c) jQuery.each(c,function(e,i){u=jQuery(i).length>0?u-jQuery(i).outerHeight(!0):u}),e.fullScreenOffset.split("%").length>1&&void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0?u-=jQuery(window).height()*parseInt(e.fullScreenOffset,0)/100:void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0&&(u-=parseInt(e.fullScreenOffset,0))}f=u}else void 0!=e.minHeight&&f<e.minHeight&&(f=e.minHeight);e.c.closest(".rev_slider_wrapper").css({height:f})					
				}catch(d){console.log("Failure at Presize of Slider:"+d)}
			};</script>
	<script type='text/javascript'
		src='http://alleehotel.com/wp-includes/js/wp-embed.min.js?ver=4.8.17'></script>
</head>

<body
	class="page-template-default page page-id-4716 page-child parent-pageid-4497  wrapper-header_overlay wrapper-header_v1 siteorigin-panels siteorigin-panels-before-js">

	<div id="preload">
		<div class="loading-inner">
			<img
				src="http://sailing.thimpress.com/demo-3/wp-content/themes/sailing/images/preload.gif"
				alt="얼레이호텔" />
		</div>
	</div>
	<div id="wrapper-container" class="wrapper-container">
		<div class="content-pusher ">




			<div class="container site-content">
				<div class="row">
					<main id="main" class="site-main col-sm-12 full-width">


						<article id="post-4716"
							class="post-4716 page type-page status-publish hentry">
							<div class="entry-content">
								<div id="pl-4716" class="panel-layout">
									<div id="pg-4716-0" class="panel-grid panel-no-style">
										<div id="pgc-4716-0-0" class="panel-grid-cell">
											<div id="panel-4716-0-0-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="0">
												<h3 class="widget-title">주변 관광지</h3>
												<div class="textwidget">
													<div id="sidebar" class="" role="">
														<div class="sidebar">
															<aside id="text-7" class="widget widget_text">
																<div class="textwidget">
																	<div class="sidebar">
																		<aside id="pages-2" class="widget widget_pages">
																			<ul>
																				<li><a href="minsok.jsp">한국민속촌</a></li>
																		
																			</ul>
																		</aside>
																	</div>
																</div>
															</aside>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id="pgc-4716-0-1" class="panel-grid-cell">
											<div id="panel-4716-0-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="1">
												<div class="textwidget">
													<div class="cont_header">
														<h2 class="page_title">
															<img class="alignnone size-full wp-image-5196"
																src="http://alleehotel.com/wp-content/uploads/2017/10/installation_summary.gif"
																alt="" width="339" height="97" />
														</h2>
														<div class="page_summary">
															<p class="blind">한국 전통의 이야기와 상상이 넘치는 한국민속촌의 시설에 대한
																정보를 알려드립니다. 디테일이 살아 숨쉬는 한국 민속촌</p>
														</div>
													</div>
													<div class="cont_body">
														<div>
															<img class="alignnone size-full wp-image-5197"
																src="http://alleehotel.com/wp-content/uploads/2017/10/installation_title_image.jpg"
																alt="" width="940" height="270" />
														</div>
														<div class="installation_description">
															<h4>
																<img class="alignnone size-full wp-image-5195"
																	src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_title.gif"
																	alt="" width="142" height="16" />
															</h4>
															<div class="place">
																<p class="desc_heading">
																	- 위치<br /> 경기도 용인시 기흥구 민속촌로 90 (약30만평)
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="pg-4716-1" class="panel-grid panel-no-style">
										<div id="pgc-4716-1-0"
											class="panel-grid-cell panel-grid-cell-empty"></div>
										<div id="pgc-4716-1-1" class="panel-grid-cell">
											<div id="panel-4716-1-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="2">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5187 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_1.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">조선시대 가옥과 전통공방</h5>
														<p>우리나라 각 지역에 분포한 조선시대 가옥의 건축적 특징을 살필 수 있으며 전통 공예품을
															만드는 9곳의 공방이 운영되고 있어 체험, 구매가 가능합니다.</p>
														<p></p>
														<ul>
															<li>전시가옥 270여동</li>
															<li>공방: 9곳 (대장간, 옹기, 죽기, 목기 등)</li>
															<li>전통생활도구 2만여점 (목가구, 도자기, 농기류 등)</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="pgc-4716-1-2" class="panel-grid-cell">
											<div id="panel-4716-1-2-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="3">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5188 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_2.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">천혜의 환경 속에 자리한 아름다운 마을</h5>
														<p>한국민속촌의 마을은 배산임수의 풍수지리적 장소에 위치해 있습니다. 농경작업 또한 마을 정경에
															풍취를 더하는 모습 중 하나입니다.</p>
														<p></p>
														<ul>
															<li>한국민속촌 약 30만평(민속마을, 놀이마을)</li>
															<li>사계절 전통 농경작업 (경작지 13,223㎡)</li>
															<li>80여종의 수종 및 전래작물 100여종(약초 30여종) 재배</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="pg-4716-2" class="panel-grid panel-no-style">
										<div id="pgc-4716-2-0"
											class="panel-grid-cell panel-grid-cell-empty"></div>
										<div id="pgc-4716-2-1" class="panel-grid-cell">
											<div id="panel-4716-2-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="4">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5189 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_3.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">민속문화를 한눈에 살펴보는 각양각색
															전시관</h5>
														<p>한국민속촌에는 다양한 전시관이 있어 한눈에 민속문화에 대한 내용을 살펴볼 수 있습니다.</p>
														<p></p>
														<ul>
															<li class="sub_line2"><span class="sub_title">전통민속관:</span>7개
																전시관 ( 1,100㎡, 200명 수용), 문화유산860여점</li>
															<li class="sub_line2"><span class="sub_title">세계민속관:</span>9개
																전시관 ( 1,700 ㎡, 200명 수용), 문화유산 3,000여점</li>
															<li class="sub_line2"><span class="sub_title">옹기전시관:</span>1개
																전시관 ( 480㎡, 80명수용), 700여점</li>
															<li class="sub_line2"><span class="sub_title">탈춤전시관:</span>1개
																전시관 ( 270 ㎡, 100명수용),30여점</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="pgc-4716-2-2" class="panel-grid-cell">
											<div id="panel-4716-2-2-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="5">
												<div class="textwidget">
													<div class="installation_feature_image"
														style="text-align: center;">
														<img class="alignnone  wp-image-5190"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_4.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">어깨 춤이 절로 나는 흥겨움, 전통
															예술 공연</h5>
														<ul>
															<li>민속촌 메인 공연장 (약 500여명 수용)</li>
															<li>마상무예 공연장 (약 200여명 수용)</li>
															<li>전통혼례식장 (약 200여명 수용)</li>
															<li>가족공원 공연장 (약 200여명 수용)</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="pg-4716-3" class="panel-grid panel-no-style">
										<div id="pgc-4716-3-0"
											class="panel-grid-cell panel-grid-cell-empty"></div>
										<div id="pgc-4716-3-1" class="panel-grid-cell">
											<div id="panel-4716-3-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="6">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5191 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_5.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">정성이 가득 담긴 전통 먹거리 /
															살거리</h5>
														<ul>
															<li>상가지역 한식점 : 한국관, 길목집, 양반장</li>
															<li>전통찻집 : 한약방, 전통찻집</li>
															<li>장터</li>
															<li>민속마을 매점 8개소</li>
															<li>놀이마을 음식점 : 레일로드, 민속반점 등</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="pgc-4716-3-2" class="panel-grid-cell">
											<div id="panel-4716-3-2-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="7">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5192 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_6.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">전통과 함께하는 청소년 수련시설,
															유스호스텔</h5>
														<ul>
															<li>숙소 5개동(541명 수용), 대강당(500명 수용)</li>
															<li>예절 교육장</li>
															<li>단체식당 2, 매점 1</li>
															<li>삼림욕 산책로</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="pg-4716-4" class="panel-grid panel-no-style">
										<div id="pgc-4716-4-0"
											class="panel-grid-cell panel-grid-cell-empty"></div>
										<div id="pgc-4716-4-1" class="panel-grid-cell">
											<div id="panel-4716-4-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="8">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class=" wp-image-5193 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_7.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">아이들의 꿈이 자라는 놀이마을</h5>
														<ul>
															<li>바이킹 외 놀이기구 12종</li>
															<li>겨울 눈썰매장</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div id="pgc-4716-4-2" class="panel-grid-cell">
											<div id="panel-4716-4-2-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="9">
												<div class="textwidget">
													<div class="installation_feature_image">
														<img class="wp-image-5194 aligncenter"
															src="http://alleehotel.com/wp-content/uploads/2017/10/installation_sub_image_8.jpg"
															alt="" width="600" height="302" />
													</div>
													<div class="installation_feature_desc">
														<h5 style="text-align: center;">다양한 편의시설</h5>
														<ul>
															<li>관광안내소, 의무실, 방송실, 미아보호실</li>
															<li>화장실 15개소, 휴식용 정자 약 30개소</li>
															<li>유모차대여소, 휠체어 대여소, 물품보관소 등</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="pg-4716-5" class="panel-grid panel-no-style">
										<div id="pgc-4716-5-0"
											class="panel-grid-cell panel-grid-cell-empty"></div>
										<div id="pgc-4716-5-1" class="panel-grid-cell">
											<div id="panel-4716-5-1-0"
												class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
												data-index="10">
												<div class="textwidget">
													<p class="marker">
														<strong>위치</strong><br />경기도 용인시 기흥구 민속촌로 90
													</p>
													<p class="marker">
														<strong>개관</strong><br />1974년 10월 3일(1973년 착공, 1974년 준공)
													</p>
													<p class="marker">
														<strong>운영시간</strong> : 연중무휴<br />2월~4월 : 평일(09:30~18:00)
														/ 주말(09:30~18:30)<br />5월~9월 : 평일(09:30~18:30) /
														주말(09:30~19:30)<br />10월 : 평일(09:30~18:00) /
														주말(09:30~18:30)<br />11월~1월 : 평일(09:30~17:30) /
														주말(09:30~18:00)
													</p>
													<p>
														<a href="http://www.koreanfolk.co.kr/"><strong>▶
														</strong>주요 행사일정 보러가기 GO!</a>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- .entry-content -->
						</article>
						<!-- #post-## -->


					</main>
				</div>
			</div>
		</section>



		<div class="covers-parallax"></div>
		<script type="text/html" id="tmpl-hb-minicart-item">
    <div class="hb_mini_cart_item active" data-cart-id="{{ data.cart_id }}">

        <div class="hb_mini_cart_top">

            <h4 class="hb_title"><a href="{{{ data.permalink }}}">{{ data.name }}</a></h4>
            <span class="hb_mini_cart_remove"><i class="fa fa-times"></i></span>

        </div>

        <div class="hb_mini_cart_number">

            <label>Quantity: </label>
            <span>{{ data.quantity }}</span>

        </div>

        <# if ( typeof data.extra_packages !== 'undefined' && Object.keys( data.extra_packages ).length > 0 ) { #>
            <div class="hb_mini_cart_price_packages">
                <label>Addition Services:</label>
                <ul>
                    <#  for ( var i = 0; i < Object.keys( data.extra_packages ).length; i++ ) { #>
                            <# var pack = data.extra_packages[i]; #>
                            <li>
                                <div class="hb_package_title">
                                    <a href="#">{{{ pack.package_title }}}</a>
                                    <span>
                                        ({{{ pack.package_quantity }}})
                                        <a href="#" class="hb_package_remove" data-cart-id="{{ pack.cart_id }}"><i class="fa fa-times"></i></a>
                                    </span>
                                </div>
                            </li>
                     <# } #>
                </ul>
            </div>
        <# } #>

        <div class="hb_mini_cart_price">

            <label>Price: </label>
            <span>{{{ data.total }}}</span>

        </div>

    </div>
</script>
		<script type="text/html" id="tmpl-hb-minicart-footer">
    <div class="hb_mini_cart_footer">

        <a href="" class="hb_button hb_checkout">Check Out</a>
        <a href="" class="hb_button hb_view_cart">View Cart</a>

    </div>
</script>
		<script type="text/html" id="tmpl-hb-minicart-empty">
    <p class="hb_mini_cart_empty">Your cart is empty!</p>
</script>
		<script>
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                ga('create', '', 'auto');
                ga('send', 'pageview');
            </script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-includes/js/jquery/jquery.form.min.js?ver=3.37.0'></script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/plugins/thim-framework/js/bootstrap.min.js?ver=4.8.17'></script>
		<script type='text/javascript'>
/* <![CDATA[ */
var TPHB_Extra_Lang = [];
/* ]]> */
</script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/plugins/wp-hotel-booking-extra/inc/assets/js/site.js?ver=1.7.9.1'></script>
		<script type='text/javascript'>
/* <![CDATA[ */
var hotel_booking_i18n = {"invalid_email":"Your email address is invalid.","no_payment_method_selected":"Please select your payment method.","confirm_tos":"Please accept our Terms and Conditions.","no_rooms_selected":"Please select at least one the room.","empty_customer_title":"Please select your title.","empty_customer_first_name":"Please enter your first name.","empty_customer_last_name":"Please enter your last name.","empty_customer_address":"Please enter your address.","empty_customer_city":"Please enter your city name.","empty_customer_state":"Please enter your state.","empty_customer_postal_code":"Please enter your postal code.","empty_customer_country":"Please select your country.","empty_customer_phone":"Please enter your phone number.","customer_email_invalid":"Your email is invalid.","customer_email_not_match":"Your email does not match with existing email! Ok to create a new customer information.","empty_check_in_date":"Please select check in date.","empty_check_out_date":"Please select check out date.","check_in_date_must_be_greater":"Check in date must be greater than the current.","check_out_date_must_be_greater":"Check out date must be greater than the check in.","enter_coupon_code":"Please enter coupon code.","review_rating_required":"Please select a rating.","waring":{"room_select":"Please select room number.","try_again":"Please try again!"},"date_time_format":"yy-mm-dd","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","Maj","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["Su","Mo","Tu","We","Th","Fr","Sa"],"date_start":"0","view_cart":"View Cart","cart_url":""};
var hotel_booking_i18n = {"invalid_email":"Your email address is invalid.","no_payment_method_selected":"Please select your payment method.","confirm_tos":"Please accept our Terms and Conditions.","no_rooms_selected":"Please select at least one the room.","empty_customer_title":"Please select your title.","empty_customer_first_name":"Please enter your first name.","empty_customer_last_name":"Please enter your last name.","empty_customer_address":"Please enter your address.","empty_customer_city":"Please enter your city name.","empty_customer_state":"Please enter your state.","empty_customer_postal_code":"Please enter your postal code.","empty_customer_country":"Please select your country.","empty_customer_phone":"Please enter your phone number.","customer_email_invalid":"Your email is invalid.","customer_email_not_match":"Your email does not match with existing email! Ok to create a new customer information.","empty_check_in_date":"Please select check in date.","empty_check_out_date":"Please select check out date.","check_in_date_must_be_greater":"Check in date must be greater than the current.","check_out_date_must_be_greater":"Check out date must be greater than the check in.","enter_coupon_code":"Please enter coupon code.","review_rating_required":"Please select a rating.","waring":{"room_select":"Please select room number.","try_again":"Please try again!"},"date_time_format":"yy-mm-dd","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","Maj","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["Su","Mo","Tu","We","Th","Fr","Sa"],"date_start":"0","view_cart":"View Cart","cart_url":""};
/* ]]> */
</script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/js/hotel-booking.js?ver=4.8.17'></script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/themes/sailing/assets/js/main.min.js?ver=4.8.17'></script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/themes/sailing/assets/js/theia-sticky-sidebar.js?ver=4.8.17'></script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/themes/sailing/assets/js/custom-script.min.js?ver=4.8.17'></script>
		<script type='text/javascript'>
/* <![CDATA[ */
var kboard_settings = {"version":"5.3.4","home_url":"\/","site_url":"\/","post_url":"http:\/\/alleehotel.com\/wp-admin\/admin-post.php","alax_url":"http:\/\/alleehotel.com\/wp-admin\/admin-ajax.php","plugin_url":"http:\/\/alleehotel.com\/wp-content\/plugins\/kboard","media_group":"60fab12a66279","ajax_security":"15323b60cf"};
var kboard_localize_strings = {"kboard_add_media":"KBoard \ubbf8\ub514\uc5b4 \ucd94\uac00","next":"\ub2e4\uc74c","prev":"\uc774\uc804","please_enter_the_title":"\uc81c\ubaa9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_author":"\uc791\uc131\uc790\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_password":"\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_CAPTCHA":"\uc606\uc5d0 \ubcf4\uc774\ub294 \ubcf4\uc548\ucf54\ub4dc\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_name":"\uc774\ub984\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_email":"\uc774\uba54\uc77c\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","you_have_already_voted":"\uc774\ubbf8 \ud22c\ud45c\ud588\uc2b5\ub2c8\ub2e4.","please_wait":"\uae30\ub2e4\ub824\uc8fc\uc138\uc694.","newest":"\ucd5c\uc2e0\uc21c","best":"\ucd94\ucc9c\uc21c","updated":"\uc5c5\ub370\uc774\ud2b8\uc21c","viewed":"\uc870\ud68c\uc21c","yes":"\uc608","no":"\uc544\ub2c8\uc694","did_it_help":"\ub3c4\uc6c0\uc774 \ub418\uc5c8\ub098\uc694?","hashtag":"\ud574\uc2dc\ud0dc\uadf8","tag":"\ud0dc\uadf8","add_a_tag":"\ud0dc\uadf8 \ucd94\uac00","removing_tag":"\ud0dc\uadf8 \uc0ad\uc81c","changes_you_made_may_not_be_saved":"\ubcc0\uacbd\uc0ac\ud56d\uc774 \uc800\uc7a5\ub418\uc9c0 \uc54a\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","email":"\uc774\uba54\uc77c","address":"\uc8fc\uc18c","postcode":"\uc6b0\ud3b8\ubc88\ud638","phone_number":"\ud734\ub300\ud3f0\ubc88\ud638","mobile_phone":"\ud734\ub300\ud3f0\ubc88\ud638","phone":"\ud734\ub300\ud3f0\ubc88\ud638","company_name":"\ud68c\uc0ac\uba85","vat_number":"\uc0ac\uc5c5\uc790\ub4f1\ub85d\ubc88\ud638","bank_account":"\uc740\ud589\uacc4\uc88c","name_of_deposit":"\uc785\uae08\uc790\uba85","find":"\ucc3e\uae30","rate":"\ub4f1\uae09","ratings":"\ub4f1\uae09","waiting":"\ub300\uae30","complete":"\uc644\ub8cc","question":"\uc9c8\ubb38","answer":"\ub2f5\ubcc0","notify_me_of_new_comments_via_email":"\uc774\uba54\uc77c\ub85c \uc0c8\ub85c\uc6b4 \ub313\uae00 \uc54c\ub9bc \ubc1b\uae30","ask_question":"\uc9c8\ubb38\ud558\uae30","categories":"\uce74\ud14c\uace0\ub9ac","pages":"\ud398\uc774\uc9c0","all_products":"\uc804\uccb4\uc0c1\ud488","your_orders":"\uc8fc\ubb38\uc870\ud68c","your_sales":"\ud310\ub9e4\uc870\ud68c","my_orders":"\uc8fc\ubb38\uc870\ud68c","my_sales":"\ud310\ub9e4\uc870\ud68c","new_product":"\uc0c1\ud488\ub4f1\ub85d","edit_product":"\uc0c1\ud488\uc218\uc815","delete_product":"\uc0c1\ud488\uc0ad\uc81c","seller":"\ud310\ub9e4\uc790","period":"\uae30\uac04","period_of_use":"\uc0ac\uc6a9\uae30\uac04","last_updated":"\uc5c5\ub370\uc774\ud2b8 \ub0a0\uc9dc","list_price":"\uc815\uc0c1\uac00\uaca9","price":"\ud310\ub9e4\uac00\uaca9","total_price":"\ucd1d \uac00\uaca9","amount":"\uacb0\uc81c\uae08\uc561","quantity":"\uc218\ub7c9","use_points":"\ud3ec\uc778\ud2b8 \uc0ac\uc6a9","my_points":"\ub0b4 \ud3ec\uc778\ud2b8","available_points":"\uc0ac\uc6a9 \uac00\ub2a5 \ud3ec\uc778\ud2b8","apply_points":"\uc801\uc6a9\ub41c \ud3ec\uc778\ud2b8","buy_it_now":"\uad6c\ub9e4\ud558\uae30","sold_out":"\ud488\uc808","for_free":"\ubb34\ub8cc","pay_s":"%s \uacb0\uc81c","payment_method":"\uacb0\uc81c\uc218\ub2e8","credit_card":"\uc2e0\uc6a9\uce74\ub4dc","make_a_deposit":"\ubb34\ud1b5\uc7a5\uc785\uae08","reward_point":"\uc801\ub9bd \ud3ec\uc778\ud2b8","download_expiry":"\ub2e4\uc6b4\ub85c\ub4dc \uae30\uac04","checkout":"\uc8fc\ubb38\uc815\ubcf4\ud655\uc778","buyer_information":"\uc8fc\ubb38\uc790","applying_cash_receipts":"\ud604\uae08\uc601\uc218\uc99d \uc2e0\uccad","privacy_policy":"\uac1c\uc778 \uc815\ubcf4 \uc815\ucc45","i_agree_to_the_privacy_policy":"\uac1c\uc778 \uc815\ubcf4 \uc815\ucc45\uc5d0 \ub3d9\uc758\ud569\ub2c8\ub2e4.","i_confirm_the_terms_of_the_transaction_and_agree_to_the_payment_process":"\uac70\ub798\uc870\uac74\uc744 \ud655\uc778\ud588\uc73c\uba70 \uacb0\uc81c\uc9c4\ud589\uc5d0 \ub3d9\uc758\ud569\ub2c8\ub2e4.","today":"\uc624\ub298","yesterday":"\uc5b4\uc81c","this_month":"\uc774\ubc88\ub2ec","last_month":"\uc9c0\ub09c\ub2ec","last_30_days":"\ucd5c\uadfc30\uc77c","agree":"\ucc2c\uc131","disagree":"\ubc18\ub300","opinion":"\uc758\uacac"};
/* ]]> */
</script>
		<script type='text/javascript'
			src='http://alleehotel.com/wp-content/plugins/kboard/template/js/script.js?ver=5.3.4'></script>
		<script type="text/javascript">document.body.className = document.body.className.replace("siteorigin-panels-before-js","");</script>
</body>
</html>