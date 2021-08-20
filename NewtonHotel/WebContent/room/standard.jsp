<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Standard room</title>

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Riviera Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="../js/jquery.min.js"></script>
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










<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://alleehotel.com/xmlrpc.php">
	<title>Standard Room(Twin) &#8211; 얼레이호텔</title>

<!-- WordPress KBoard plugin 5.3.4 - http://www.cosmosfarm.com/products/kboard -->
<link rel="alternate" href="http://alleehotel.com/wp-content/plugins/kboard/rss.php" type="application/rss+xml" title="얼레이호텔 &raquo; KBoard 통합 피드">
<!-- WordPress KBoard plugin 5.3.4 - http://www.cosmosfarm.com/products/kboard -->

<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="얼레이호텔 &raquo; 피드" href="http://alleehotel.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="얼레이호텔 &raquo; 댓글 피드" href="http://alleehotel.com/comments/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/alleehotel.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.17"}};
			!function(t,a,e){var r,i,n,o=a.createElement("canvas"),l=o.getContext&&o.getContext("2d");function c(t){var e=a.createElement("script");e.src=t,e.defer=e.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(e)}for(n=Array("flag","emoji4"),e.supports={everything:!0,everythingExceptFlag:!0},i=0;i<n.length;i++)e.supports[n[i]]=function(t){var e,a=String.fromCharCode;if(!l||!l.fillText)return!1;switch(l.clearRect(0,0,o.width,o.height),l.textBaseline="top",l.font="600 32px Arial",t){case"flag":return(l.fillText(a(55356,56826,55356,56819),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,56826,8203,55356,56819),0,0),e===o.toDataURL())?!1:(l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),e!==o.toDataURL());case"emoji4":return l.fillText(a(55358,56794,8205,9794,65039),0,0),e=o.toDataURL(),l.clearRect(0,0,o.width,o.height),l.fillText(a(55358,56794,8203,9794,65039),0,0),e!==o.toDataURL()}return!1}(n[i]),e.supports.everything=e.supports.everything&&e.supports[n[i]],"flag"!==n[i]&&(e.supports.everythingExceptFlag=e.supports.everythingExceptFlag&&e.supports[n[i]]);e.supports.everythingExceptFlag=e.supports.everythingExceptFlag&&!e.supports.flag,e.DOMReady=!1,e.readyCallback=function(){e.DOMReady=!0},e.supports.everything||(r=function(){e.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",r,!1),t.addEventListener("load",r,!1)):(t.attachEvent("onload",r),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&e.readyCallback()})),(r=e.source||{}).concatemoji?c(r.concatemoji):r.wpemoji&&r.twemoji&&(c(r.twemoji),c(r.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
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
<link rel='stylesheet' id='bbse-popup-view-css'  href='http://alleehotel.com/wp-content/plugins/bbs-e-popup/css/bbse-popup-style.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='post_grid_style-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/style-new.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='owl.carousel-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/owl.carousel.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/font-awesome.min.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='style-woocommerce-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/css/style-woocommerce.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='style.skins-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/global/css/style.skins.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='style.layout-css'  href='http://alleehotel.com/wp-content/plugins/post-grid/assets/global/css/style.layout.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='rs-plugin-settings-css'  href='http://alleehotel.com/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.4.5.1' type='text/css' media='all' />
<style id='rs-plugin-settings-inline-css' type='text/css'>
#rs-demo-id {}
</style>
<link rel='stylesheet' id='siteorigin-panels-front-css'  href='http://alleehotel.com/wp-content/plugins/siteorigin-panels/css/front-flex.css?ver=2.5.13' type='text/css' media='all' />
<link rel='stylesheet' id='thim-awesome-css'  href='http://alleehotel.com/wp-content/plugins/thim-framework/css/font-awesome.min.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='tp-hb-extra-css-css'  href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/plugins/wp-hotel-booking-extra/inc/assets/css/site.css?ver=1.7.9.1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-hotel-booking-css'  href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/css/hotel-booking.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='wp-hotel-booking-libaries-style-css'  href='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/css/libraries.css?ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='thim-css-style-css'  href='http://alleehotel.com/wp-content/themes/sailing/assets/css/custom-style.css?ver=1.13.1.1' type='text/css' media='all' />
<link rel='stylesheet' id='thim-style-css'  href='http://alleehotel.com/wp-content/themes/sailing/style.css?ver=1.13.1.1' type='text/css' media='all' />
<link rel='stylesheet' id='tf-google-webfont-roboto-css'  href='//fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C300%2C300italic%2C400%2Citalic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic&#038;subset=greek-ext%2Cgreek%2Ccyrillic-ext%2Clatin-ext%2Clatin%2Cvietnamese%2Ccyrillic&#038;ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='tf-google-webfont-crimson-text-css'  href='//fonts.googleapis.com/css?family=Crimson+Text%3A400%2Citalic%2C600%2C600italic%2C700%2C700italic&#038;subset=latin&#038;ver=4.8.17' type='text/css' media='all' />
<link rel='stylesheet' id='kboard-editor-media-css'  href='http://alleehotel.com/wp-content/plugins/kboard/template/css/editor_media.css?ver=5.3.4' type='text/css' media='all' />
<link rel='stylesheet' id='kboard-skin-default-css'  href='http://alleehotel.com/wp-content/plugins/kboard/skin/default/style.css?ver=5.3.4' type='text/css' media='all' />
<script type="text/javascript">
        var ajax_url ="http://alleehotel.com/wp-admin/admin-ajax.php";
        </script>        <script type="text/javascript">
            var hotel_settings = {
                ajax: 'http://alleehotel.com/wp-admin/admin-ajax.php',
                settings: {"review_rating_required":"1"},
                upload_base_url: 'http://alleehotel.com/wp-content/uploads',
                meta_key: {
                    prefix: '_hb_'
                },
                nonce: '2e906d0cda',
                timezone: '1627075594',
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
                timezone: '1627075594',
                min_booking_date: 1            }
        </script>
		<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/bbs-e-popup/js/bbse-popup-common.js?ver=4.8.17'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var post_grid_ajax = {"post_grid_ajaxurl":"http:\/\/alleehotel.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/scripts.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/masonry.pkgd.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/owl.carousel.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/post-grid/assets/frontend/js/imagesloaded.pkgd.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.4.5.1'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.4.5.1'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpUtilSettings = {"ajax":{"url":"\/wp-admin\/admin-ajax.php"}};
/* ]]> */
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/wp-util.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/ui/datepicker.min.js?ver=1.11.4'></script>
<script type='text/javascript'>
jQuery(document).ready(function(jQuery){jQuery.datepicker.setDefaults({"closeText":"\ub2eb\uae30","currentText":"\uc624\ub298","monthNames":["1\uc6d4","2\uc6d4","3\uc6d4","4\uc6d4","5\uc6d4","6\uc6d4","7\uc6d4","8\uc6d4","9\uc6d4","10\uc6d4","11\uc6d4","12\uc6d4"],"monthNamesShort":["1\uc6d4","2\uc6d4","3\uc6d4","4\uc6d4","5\uc6d4","6\uc6d4","7\uc6d4","8\uc6d4","9\uc6d4","10\uc6d4","11\uc6d4","12\uc6d4"],"nextText":"\ub2e4\uc74c","prevText":"\uc774\uc804","dayNames":["\uc77c\uc694\uc77c","\uc6d4\uc694\uc77c","\ud654\uc694\uc77c","\uc218\uc694\uc77c","\ubaa9\uc694\uc77c","\uae08\uc694\uc77c","\ud1a0\uc694\uc77c"],"dayNamesShort":["\uc77c","\uc6d4","\ud654","\uc218","\ubaa9","\uae08","\ud1a0"],"dayNamesMin":["\uc77c","\uc6d4","\ud654","\uc218","\ubaa9","\uae08","\ud1a0"],"dateFormat":"yy-mm-dd","firstDay":0,"isRTL":false});});
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/libraries/owl-carousel/owl.carousel.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/libraries/camera/js/gallery.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/js/select2.min.js?ver=4.8.17'></script>
<link rel='https://api.w.org/' href='http://alleehotel.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://alleehotel.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://alleehotel.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.8.17" />
<link rel="canonical" href="http://alleehotel.com/home/standard-roomt/" />
<link rel='shortlink' href='http://alleehotel.com/?p=4388' />
<link rel="alternate" type="application/json+oembed" href="http://alleehotel.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Falleehotel.com%2Fhome%2Fstandard-roomt%2F" />
<link rel="alternate" type="text/xml+oembed" href="http://alleehotel.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Falleehotel.com%2Fhome%2Fstandard-roomt%2F&#038;format=xml" />
<meta name="generator" content="Powered by Slider Revolution 5.4.5.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
				<style type="text/css" media="all"
				       id="siteorigin-panels-layouts-head">/* Layout 4388 */ #pgc-4388-0-0 { width:21.9964%;width:calc(21.9964% - ( 0.78003633291718 * 30px ) ) } #pgc-4388-0-1 { width:78.0036%;width:calc(78.0036% - ( 0.21996366708282 * 30px ) ) } #pl-4388 .so-panel { margin-bottom:30px } #pl-4388 .so-panel:last-child { margin-bottom:0px } #pg-4388-0.panel-no-style, #pg-4388-0.panel-has-style > .panel-row-style { -webkit-align-items:flex-start;align-items:flex-start } @media (max-width:780px){ #pg-4388-0.panel-no-style, #pg-4388-0.panel-has-style > .panel-row-style { -webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column } #pg-4388-0 .panel-grid-cell { margin-right:0 } #pg-4388-0 .panel-grid-cell { width:100% } #pgc-4388-0-0 { margin-bottom:30px } #pl-4388 .panel-grid-cell { padding:0 } #pl-4388 .panel-grid .panel-grid-cell-empty { display:none } #pl-4388 .panel-grid .panel-grid-cell-mobile-last { margin-bottom:0px }  } </style><link rel="icon" href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1-32x32.png" sizes="32x32" />
<link rel="icon" href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png" />
<meta name="msapplication-TileImage" content="http://alleehotel.com/wp-content/uploads/2017/08/allee-1.png" />
<script type="text/javascript">function setREVStartSize(e){
				try{ var i=jQuery(window).width(),t=9999,r=0,n=0,l=0,f=0,s=0,h=0;					
					if(e.responsiveLevels&&(jQuery.each(e.responsiveLevels,function(e,f){f>i&&(t=r=f,l=e),i>f&&f>r&&(r=f,n=e)}),t>r&&(l=n)),f=e.gridheight[l]||e.gridheight[0]||e.gridheight,s=e.gridwidth[l]||e.gridwidth[0]||e.gridwidth,h=i/s,h=h>1?1:h,f=Math.round(h*f),"fullscreen"==e.sliderLayout){var u=(e.c.width(),jQuery(window).height());if(void 0!=e.fullScreenOffsetContainer){var c=e.fullScreenOffsetContainer.split(",");if (c) jQuery.each(c,function(e,i){u=jQuery(i).length>0?u-jQuery(i).outerHeight(!0):u}),e.fullScreenOffset.split("%").length>1&&void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0?u-=jQuery(window).height()*parseInt(e.fullScreenOffset,0)/100:void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0&&(u-=parseInt(e.fullScreenOffset,0))}f=u}else void 0!=e.minHeight&&f<e.minHeight&&(f=e.minHeight);e.c.closest(".rev_slider_wrapper").css({height:f})					
				}catch(d){console.log("Failure at Presize of Slider:"+d)}
			};</script>
<script type='text/javascript' src='http://alleehotel.com/wp-includes/js/wp-embed.min.js?ver=4.8.17'></script>
</head>

<body class="page-template-default page page-id-4388 page-child parent-pageid-4497  wrapper-header_overlay wrapper-header_v1 siteorigin-panels siteorigin-panels-before-js">
 
			<div id="preload">
			<div class="loading-inner">
				<img src="http://sailing.thimpress.com/demo-3/wp-content/themes/sailing/images/preload.gif" alt="얼레이호텔" />			</div>
		</div>
	<div id="wrapper-container" class="wrapper-container">
	<div class="content-pusher ">
<%--		<header id="masthead" class="site-header affix-top bg-custom-sticky sticky-header header_overlay header_v1">
			<!-- 1 -->

<div class="inner-navigation">
	<ul class="nav navbar-nav menu-main-menu">
		<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children drop_to_right standard"><a href="http://alleehotel.com/home/introduction/"><span data-hover="Allee Hotel">Allee Hotel</span></a>
<ul class="sub-menu" >
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/introduction/">Introduction</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/location/">Location</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/brochure/">Brochure</a></li>
</ul>
</li>
<li  class="menu-item menu-item-type-custom menu-item-object-custom drop_to_right standard"><a href="http://alleehotel.com/home/information/"><span data-hover="Accommodation">Accommodation</span></a></li>
<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children drop_to_right standard"><a href="http://alleehotel.com/home/restaurant/"><span data-hover="Facilities">Facilities</span></a>
<ul class="sub-menu" >
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/restaurant/">Restaurant</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/business-center/">Business Center</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/conference-room/">Conference Room</a></li>
</ul>
</li>
<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children drop_to_right standard"><a href="http://alleehotel.com/home/event/"><span data-hover="Event & News">Event &#038; News</span></a>
<ul class="sub-menu" >
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/event/">Event</a></li>
	<li  class="menu-item menu-item-type-custom menu-item-object-custom"><a href="/home/news/">News</a></li>
</ul>
</li>
<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children drop_to_right standard"><a href="http://alleehotel.com/home/korean-folk-village/"><span data-hover="Tour Guide">Tour Guide</span></a>
<ul class="sub-menu" >
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/korean-folk-village/">Korean Folk Village</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/hwaseong-fortress/">Hwaseong Fortress</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/nam-june-paik-art-center/">Nam June Paik Art Center</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/everland-resort/">Everland Resort</a></li>
</ul>
</li>
<li  class="menu-item menu-item-type-post_type menu-item-object-page drop_to_right standard"><a href="http://alleehotel.com/home/gallery/"><span data-hover="Gallery">Gallery</span></a></li>
<li  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children drop_to_right standard"><a href="http://alleehotel.com/home/reservation-guide/"><span data-hover="Reservation">Reservation</span></a>
<ul class="sub-menu" >
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/reservation-guide/">Reservation Guide</a></li>
	<li  class="menu-item menu-item-type-post_type menu-item-object-page"><a href="http://alleehotel.com/home/reservation-2/">Reservation</a></li>
</ul>
</li>
	</ul>

	</div>
<!--</div>-->				</nav>
			</div>
			<!--end .row-->
		</div>
	</div>
</div>		</header>    --%>
		<div id="main-content">
	<section class="content-area">
		>
            <div class="page-title-wrapper">
            <div class="banner-wrapper container article_heading">
                       </div>
    </div>


<div class="container site-content"><div class="row"><main id="main" class="site-main col-sm-12 full-width" >

    
<article id="post-4388" class="post-4388 page type-page status-publish hentry">
	<div class="entry-content">
		<div id="pl-4388"  class="panel-layout" ><div id="pg-4388-0"  class="panel-grid panel-no-style" ><div id="pgc-4388-0-0"  class="panel-grid-cell" ><div id="panel-4388-0-0-0" class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child" data-index="0" ><h3 class="widget-title">Accommodation</h3><div class="textwidget"><div id="sidebar" class="" role="">
<div class="sidebar">
<aside id="text-7" class="widget widget_text">
<div class="textwidget">
<div class="sidebar">
<aside id="pages-2" class="widget widget_pages">
<ul>
<li class="page_item page-item-3860"><a href="../room/accomo.jsp"><b>INFORMATION </b></a></li>
<li class="page_item page-item-3860"><a href="../room/standard.jsp">스탠다드 룸</a></li>
<li class="page_item page-item-3860"><a href="../room/dirux.jsp">디럭스 룸</a></li>
<li class="page_item page-item-3860"><a href="../room/swit.jsp">스위트 룸</a></li>
<li class="page_item page-item-3860"><a href="../room/switspar.jsp">스위트 스파룸</a></li>
</ul>
</aside>
</div>
</div>
</aside>
</div>
</div>
<p>&nbsp;</p>
</div></div></div><div id="pgc-4388-0-1"  class="panel-grid-cell" ><div id="panel-4388-0-1-0" class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child" data-index="1" ><div class="textwidget"><div id="room-2522" class="hb_single_room post-2522 hb_room type-hb_room status-publish has-post-thumbnail hentry hb_room_type-twin-room">
<div class="summary entry-summary">
<div class="title">
<h4><a href="http://alleehotel.com/home/standard-roomt/">스탠다드 트윈룸</a></h4>
</div>
<div class="price"><span class="title-price">▶<strong><a href="../reservations/reserForm.jsp"> 실시간 예약 바로가기 GO!</a></strong></span></div>
<div id="slider" class="hb_room_gallery flexslider">
<ul class="slides">
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-1-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-2-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-3-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/41415호-1-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/41415호-2-1920x1280.jpg" /></li>
</ul>
</div>
<div id="carousel" class="hb_room_gallery flexslider">
<ul class="slides">
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-1-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-2-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/23호-3-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/41415호-1-1920x1280.jpg" /></li>
<li><img src="http://alleehotel.com/wp-content/uploads/2014/01/41415호-2-1920x1280.jpg" /></li>
</ul>
</div>
<div class="hb-share"> </div>
<div class="hb_single_room_details">
<ul class="hb_single_room_tabs">
<li><a href="#hb_room_description"><br /> 객실안내 </a></li>
<li><a href="#hb_room_additinal"><br /> 투숙인원 </a></li>
</ul>
<div class="hb_single_room_tabs_content">
<div id="hb_room_description" class="hb_single_room_tab_details">
<div class="row">
<div class="col-sm-8 thim-single-room-content">
<p><b class="thim-color-title">스탠다드 트윈룸은 감성적 디자인으로, 실용적이고 청결한 객실을 고객님께 제공합니다.</b></p>
<h5>객실정보</h5>
<p class="marker"><strong>구성<br /> </strong>스탠다드 트윈룸 더블침대1, 싱글침대1, 고급월풀욕조</p>
<p class="marker"><strong>위치<br /> </strong>본관, 별관 각 2~7층(2호, 3호, 4호, 11호, 12호, 14호, 15호)</p>
<p class="marker"><strong>주요시설<br /> </strong>개별 냉난방 시스템, 삼성 50″ LED TV, 업무용 책상 및 의자, 비데, 냉장고, 전기포트</p>
<p class="marker"><strong>주요서비스<br /> </strong>무료 wifi 서비스, 룸서비스, 턴다운 서비스, 무료미니바, 캡슐커피</p>
<p><strong>CHECH IN / CHECK OUT</strong><br /> 체크인은 15시 체크아웃은 12시입니다.<br /> 체크아웃 연장 시 상황에 따라 제한되며, 비용이 추가 될 수 있습니다.</p>
</div>
<p class="col-sm-4"> </p>
</div>
</div>
<div id="hb_room_additinal" class="hb_single_room_tab_details">
<h5> </h5>
<table>
<tbody>
<tr>
<td colspan="5"><b>객실별 입실 가능 인원</b></td>
</tr>
<tr>
<td colspan="5"> </td>
</tr>
<tr>
<td><b>객실타입</b></td>
<td><b>침대 구성</b></td>
<td><b>기준 인원</b></td>
<td><b>최대인원</b></td>
<td><b>비고</b></td>
</tr>
<tr>
<td>스탠다드 더블</td>
<td>더블 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 2인</td>
<td> </td>
</tr>
<tr>
<td>스탠다드 트윈</td>
<td>더블 Size 1 + 싱글 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 3인</td>
<td> </td>
</tr>
<tr>
<td>디럭스 더블</td>
<td>더블 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 2인</td>
<td> </td>
</tr>
<tr>
<td>디럭스 트윈</td>
<td>더블 Size 1 + 싱글 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 3인</td>
<td> </td>
</tr>
<tr>
<td>스위트 더블</td>
<td>더블 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 2인</td>
<td> </td>
</tr>
<tr>
<td>스위트 스파,플레이</td>
<td>더블 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 2인</td>
<td> </td>
</tr>
<tr>
<td>스위트 트윈</td>
<td>더블 Size 1 + 싱글 Size 1</td>
<td>성인 2인</td>
<td>성인 2인 +만18세이하 자녀 3인</td>
<td> </td>
</tr>
<tr>
<td colspan="5"> </td>
</tr>
</tbody>
</table>
</div>
<div id="hb_room_reviews" class="hb_single_room_tab_details">
<div id="reviews">
<div id="comments">
<h2>Reviews</h2>
<p class="hb-noreviews">There are no reviews yet.</p>
</div>
<div id="review_form_wrapper">
<div id="review_form">
<div id="respond" class="comment-respond">
<h3 id="reply-title" class="comment-reply-title">Be the first to review “Standard Room(Twin)” <small><a id="cancel-comment-reply-link" style="display: none;" href="/home/standard-roomt/#respond" rel="nofollow">응답 취소</a></small></h3>
<form id="commentform" class="comment-form" action="http://alleehotel.com/wp-comments-post.php" method="post" novalidate="">
<p class="comment-form-rating"><label for="rating">Your Rating</label></p>
<div class="hb-rating-input"> </div>
<p class="comment-form-comment"><label for="comment">Your Review</label><textarea id="comment" cols="45" name="comment" rows="8" aria-required="true"></textarea></p>
<p class="form-submit"><input id="submit" class="submit" name="submit" type="submit" value="Submit" /> <input id="comment_post_ID" name="comment_post_ID" type="hidden" value="2522" /><br /> <input id="comment_parent" name="comment_parent" type="hidden" value="0" /></p>
<p><input id="_wp_unfiltered_html_comment_disabled" name="_wp_unfiltered_html_comment_disabled" type="hidden" value="9c18636c2c" /><script>(function(){if(window===window.parent){document.getElementById('_wp_unfiltered_html_comment_disabled').name='_wp_unfiltered_html_comment';}})();</script></p>
</form>
</div>
<p><!-- #respond --></p>
</div>
</div>
<div class="clear"> </div>
</div>
</div>
<div id="hb_room_pricing_plans" class="hb_single_room_tab_details">
<h4 class="hb_room_pricing_plan_data">스탠다드 트윈룸 객실요금</h4>
<table class="hb_room_pricing_plans">
<thead>
<tr>
<th>일요일</th>
<th>월요일</th>
<th>화요일</th>
<th>수요일</th>
<th>목요일</th>
<th>금요일</th>
<th>토요일</th>
</tr>
</thead>
<tbody>
<tr>
<td>₩75,000</td>
<td>₩75,000</td>
<td>₩75,000</td>
<td>₩75,000</td>
<td>₩75,000</td>
<td>₩85,000</td>
<td>₩85,000</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<p><!-- .summary --></p>
</div>
<p><!-- #product-2522 --></p>

<p><!-- .summary --></p>
</li>
</ul>
</div>
<p><script type="text/javascript">
	    (function($){
	        "use strict";
	        $(document).ready(function(){
	            var thimpress_hotel_booking_carousel_related = $('.hb_related_other_room ul.rooms');
	            thimpress_hotel_booking_carousel_related.owlCarousel({
	                navigation: false,
	                pagination: false,
	                items: 3,
		            itemsTablet: 	[768,2],
		            itemsMobile:	[480,1],
	                paginationSpeed: 600,
	                slideSpeed: 600,
	                autoPlay: false,
	                stopOnHover: true
	            });
	            // next
	            $('.hb_related_other_room .navigation .next').click(function(){
	                thimpress_hotel_booking_carousel_related.trigger('owl.next');
	            });
	            // prev
	            $('.hb_related_other_room .navigation .prev').click(function(){
	                thimpress_hotel_booking_carousel_related.trigger('owl.prev');
	            });
	        });
	    })(jQuery);
	</script></p>
</div></div></div></div></div>			</div>
	<!-- .entry-content -->
</article><!-- #post-## -->

    
</main></div></div>	</section>
	
<!-- #colophon -->

	<a id='back-to-top' class="scrollup show" title="Go To Top"></a>
</div><!--end main-content-->
</div></div><!-- .wrapper-container -->

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
</script>            <script>
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
            <script type='text/javascript' src='http://alleehotel.com/wp-includes/js/jquery/jquery.form.min.js?ver=3.37.0'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/thim-framework/js/bootstrap.min.js?ver=4.8.17'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var TPHB_Extra_Lang = [];
/* ]]> */
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/includes/plugins/wp-hotel-booking-extra/inc/assets/js/site.js?ver=1.7.9.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var hotel_booking_i18n = {"invalid_email":"Your email address is invalid.","no_payment_method_selected":"Please select your payment method.","confirm_tos":"Please accept our Terms and Conditions.","no_rooms_selected":"Please select at least one the room.","empty_customer_title":"Please select your title.","empty_customer_first_name":"Please enter your first name.","empty_customer_last_name":"Please enter your last name.","empty_customer_address":"Please enter your address.","empty_customer_city":"Please enter your city name.","empty_customer_state":"Please enter your state.","empty_customer_postal_code":"Please enter your postal code.","empty_customer_country":"Please select your country.","empty_customer_phone":"Please enter your phone number.","customer_email_invalid":"Your email is invalid.","customer_email_not_match":"Your email does not match with existing email! Ok to create a new customer information.","empty_check_in_date":"Please select check in date.","empty_check_out_date":"Please select check out date.","check_in_date_must_be_greater":"Check in date must be greater than the current.","check_out_date_must_be_greater":"Check out date must be greater than the check in.","enter_coupon_code":"Please enter coupon code.","review_rating_required":"Please select a rating.","waring":{"room_select":"Please select room number.","try_again":"Please try again!"},"date_time_format":"yy-mm-dd","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","Maj","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["Su","Mo","Tu","We","Th","Fr","Sa"],"date_start":"0","view_cart":"View Cart","cart_url":""};
var hotel_booking_i18n = {"invalid_email":"Your email address is invalid.","no_payment_method_selected":"Please select your payment method.","confirm_tos":"Please accept our Terms and Conditions.","no_rooms_selected":"Please select at least one the room.","empty_customer_title":"Please select your title.","empty_customer_first_name":"Please enter your first name.","empty_customer_last_name":"Please enter your last name.","empty_customer_address":"Please enter your address.","empty_customer_city":"Please enter your city name.","empty_customer_state":"Please enter your state.","empty_customer_postal_code":"Please enter your postal code.","empty_customer_country":"Please select your country.","empty_customer_phone":"Please enter your phone number.","customer_email_invalid":"Your email is invalid.","customer_email_not_match":"Your email does not match with existing email! Ok to create a new customer information.","empty_check_in_date":"Please select check in date.","empty_check_out_date":"Please select check out date.","check_in_date_must_be_greater":"Check in date must be greater than the current.","check_out_date_must_be_greater":"Check out date must be greater than the check in.","enter_coupon_code":"Please enter coupon code.","review_rating_required":"Please select a rating.","waring":{"room_select":"Please select room number.","try_again":"Please try again!"},"date_time_format":"yy-mm-dd","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["Jan","Feb","Mar","Apr","Maj","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["Su","Mo","Tu","We","Th","Fr","Sa"],"date_start":"0","view_cart":"View Cart","cart_url":""};
/* ]]> */
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/wp-hotel-booking/assets/js/hotel-booking.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/themes/sailing/assets/js/main.min.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/themes/sailing/assets/js/theia-sticky-sidebar.js?ver=4.8.17'></script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/themes/sailing/assets/js/custom-script.min.js?ver=4.8.17'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var kboard_settings = {"version":"5.3.4","home_url":"\/","site_url":"\/","post_url":"http:\/\/alleehotel.com\/wp-admin\/admin-post.php","alax_url":"http:\/\/alleehotel.com\/wp-admin\/admin-ajax.php","plugin_url":"http:\/\/alleehotel.com\/wp-content\/plugins\/kboard","media_group":"60fab57a59505","ajax_security":"15323b60cf"};
var kboard_localize_strings = {"kboard_add_media":"KBoard \ubbf8\ub514\uc5b4 \ucd94\uac00","next":"\ub2e4\uc74c","prev":"\uc774\uc804","please_enter_the_title":"\uc81c\ubaa9\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_author":"\uc791\uc131\uc790\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_password":"\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_CAPTCHA":"\uc606\uc5d0 \ubcf4\uc774\ub294 \ubcf4\uc548\ucf54\ub4dc\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_name":"\uc774\ub984\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","please_enter_the_email":"\uc774\uba54\uc77c\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.","you_have_already_voted":"\uc774\ubbf8 \ud22c\ud45c\ud588\uc2b5\ub2c8\ub2e4.","please_wait":"\uae30\ub2e4\ub824\uc8fc\uc138\uc694.","newest":"\ucd5c\uc2e0\uc21c","best":"\ucd94\ucc9c\uc21c","updated":"\uc5c5\ub370\uc774\ud2b8\uc21c","viewed":"\uc870\ud68c\uc21c","yes":"\uc608","no":"\uc544\ub2c8\uc694","did_it_help":"\ub3c4\uc6c0\uc774 \ub418\uc5c8\ub098\uc694?","hashtag":"\ud574\uc2dc\ud0dc\uadf8","tag":"\ud0dc\uadf8","add_a_tag":"\ud0dc\uadf8 \ucd94\uac00","removing_tag":"\ud0dc\uadf8 \uc0ad\uc81c","changes_you_made_may_not_be_saved":"\ubcc0\uacbd\uc0ac\ud56d\uc774 \uc800\uc7a5\ub418\uc9c0 \uc54a\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","email":"\uc774\uba54\uc77c","address":"\uc8fc\uc18c","postcode":"\uc6b0\ud3b8\ubc88\ud638","phone_number":"\ud734\ub300\ud3f0\ubc88\ud638","mobile_phone":"\ud734\ub300\ud3f0\ubc88\ud638","phone":"\ud734\ub300\ud3f0\ubc88\ud638","company_name":"\ud68c\uc0ac\uba85","vat_number":"\uc0ac\uc5c5\uc790\ub4f1\ub85d\ubc88\ud638","bank_account":"\uc740\ud589\uacc4\uc88c","name_of_deposit":"\uc785\uae08\uc790\uba85","find":"\ucc3e\uae30","rate":"\ub4f1\uae09","ratings":"\ub4f1\uae09","waiting":"\ub300\uae30","complete":"\uc644\ub8cc","question":"\uc9c8\ubb38","answer":"\ub2f5\ubcc0","notify_me_of_new_comments_via_email":"\uc774\uba54\uc77c\ub85c \uc0c8\ub85c\uc6b4 \ub313\uae00 \uc54c\ub9bc \ubc1b\uae30","ask_question":"\uc9c8\ubb38\ud558\uae30","categories":"\uce74\ud14c\uace0\ub9ac","pages":"\ud398\uc774\uc9c0","all_products":"\uc804\uccb4\uc0c1\ud488","your_orders":"\uc8fc\ubb38\uc870\ud68c","your_sales":"\ud310\ub9e4\uc870\ud68c","my_orders":"\uc8fc\ubb38\uc870\ud68c","my_sales":"\ud310\ub9e4\uc870\ud68c","new_product":"\uc0c1\ud488\ub4f1\ub85d","edit_product":"\uc0c1\ud488\uc218\uc815","delete_product":"\uc0c1\ud488\uc0ad\uc81c","seller":"\ud310\ub9e4\uc790","period":"\uae30\uac04","period_of_use":"\uc0ac\uc6a9\uae30\uac04","last_updated":"\uc5c5\ub370\uc774\ud2b8 \ub0a0\uc9dc","list_price":"\uc815\uc0c1\uac00\uaca9","price":"\ud310\ub9e4\uac00\uaca9","total_price":"\ucd1d \uac00\uaca9","amount":"\uacb0\uc81c\uae08\uc561","quantity":"\uc218\ub7c9","use_points":"\ud3ec\uc778\ud2b8 \uc0ac\uc6a9","my_points":"\ub0b4 \ud3ec\uc778\ud2b8","available_points":"\uc0ac\uc6a9 \uac00\ub2a5 \ud3ec\uc778\ud2b8","apply_points":"\uc801\uc6a9\ub41c \ud3ec\uc778\ud2b8","buy_it_now":"\uad6c\ub9e4\ud558\uae30","sold_out":"\ud488\uc808","for_free":"\ubb34\ub8cc","pay_s":"%s \uacb0\uc81c","payment_method":"\uacb0\uc81c\uc218\ub2e8","credit_card":"\uc2e0\uc6a9\uce74\ub4dc","make_a_deposit":"\ubb34\ud1b5\uc7a5\uc785\uae08","reward_point":"\uc801\ub9bd \ud3ec\uc778\ud2b8","download_expiry":"\ub2e4\uc6b4\ub85c\ub4dc \uae30\uac04","checkout":"\uc8fc\ubb38\uc815\ubcf4\ud655\uc778","buyer_information":"\uc8fc\ubb38\uc790","applying_cash_receipts":"\ud604\uae08\uc601\uc218\uc99d \uc2e0\uccad","privacy_policy":"\uac1c\uc778 \uc815\ubcf4 \uc815\ucc45","i_agree_to_the_privacy_policy":"\uac1c\uc778 \uc815\ubcf4 \uc815\ucc45\uc5d0 \ub3d9\uc758\ud569\ub2c8\ub2e4.","i_confirm_the_terms_of_the_transaction_and_agree_to_the_payment_process":"\uac70\ub798\uc870\uac74\uc744 \ud655\uc778\ud588\uc73c\uba70 \uacb0\uc81c\uc9c4\ud589\uc5d0 \ub3d9\uc758\ud569\ub2c8\ub2e4.","today":"\uc624\ub298","yesterday":"\uc5b4\uc81c","this_month":"\uc774\ubc88\ub2ec","last_month":"\uc9c0\ub09c\ub2ec","last_30_days":"\ucd5c\uadfc30\uc77c","agree":"\ucc2c\uc131","disagree":"\ubc18\ub300","opinion":"\uc758\uacac"};
/* ]]> */
</script>
<script type='text/javascript' src='http://alleehotel.com/wp-content/plugins/kboard/template/js/script.js?ver=5.3.4'></script>
<script type="text/javascript">document.body.className = document.body.className.replace("siteorigin-panels-before-js","");</script></body>
</html>