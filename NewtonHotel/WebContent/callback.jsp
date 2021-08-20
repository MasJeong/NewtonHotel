<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>NaverLoginSDK</title>
</head>

<body>
	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>

	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "5VWL74JECH7XHHfSzuGH",
				callbackUrl: "http://localhost:8181/newton_hotel/callback.jsp",
				isPopup: false,
				callbackHandle: true
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정. */
			}
		);
	
		//로그인을 위한 초기화?
		naverLogin.init();

		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					var name = naverLogin.user.getName();
					if( name == undefined || name == null) {
						alert("이름은 필수정보입니다. 정보제공을 동의해주세요.");
						/* 사용자 정보 재동의 위해, 다시 네아로 동의페이지로 이동함 */
						naverLogin.reprompt();
						return;
					}
					txt =  "안녕하세요. " + name + "님. 네이버 계정으로 로그인 되셨습니다."
					alert(txt);

					window.location.replace("http://localhost:8181/newton_hotel/login.do?username=" + name);
				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});

	</script>
</body>
</html>