<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/member.js"></script>
<style>
.button1 {
	background-color: #ABABAB;
	border: none;
	color: white;
	padding: 5px 10px;
	text-align: center;
	font-size: 13px;
	border-radius: 5px;
	transition-duration: 0.3s;
	box-shadow : 3px 3px 3px black;
	}
.button1:active{
	margin-left: 5px;
	margin-top : 5px;
	box-shadow : none;
}
</style>
</head>
<body>
	<h2>아이디 중복확인</h2>
	<form action="idCheck.do" method="get" name="frm">
		아이디 <input type="text" name="userid" value="${userid}"> 
		<input type="submit" class="button1" value="중복체크"> <br>
		<c:if test="${result==1}">
			<script type="text/javascript">
				openner.document.frm.userid.value = "";
			</script>
			<br>
            ${userid}는 이미 사용 중인 아이디입니다.
		</c:if>
		
		<c:if test="${result==-1}">
			<br>
  		    ${userid}는 사용 가능한 아이디입니다.
			<input type="button" class="button1" value="사용" onclick="idok()">
		</c:if>
	</form>
</body>
</html>