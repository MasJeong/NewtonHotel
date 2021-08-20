<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<link rel="stylesheet" type="text/css" href="Boardcss">
<!-- <Script>
	type = "text/javascript"
	src = "script/board.js" >
</Script> -->

<Style>
#title {
	width: 580px
}
</Style>

</head>
<body>

	<div id="wrap" align="center">
		<h1>1:1문의</h1>
		<form method="post" action="AskWrite.do" enctype="multipart/form-data">
			<!-- <input type="hidden" name="command" value="ask_write"> -->
			<table>

				<tr>
					<th>아이디</th>
					<td><input type="text" name="user_id" value="${userid }"
						readonly><br></td>
				</tr>
				<tr>
					<th>사진</th>
					<td><input type="file" name="file_name"><br></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" size=50></input></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password"> *필수</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<!-- <br> <br> <input type="submit" value="등록" onclick="return boardCheck()">  -->
			<br> <br> <input type="submit" value="등록"> <input
				type="reset" value="다시 작성"> <input type="button" value="목록"
				onclick="location.href='AskServlet?command=ask_list'">

		</form>
	</div>
</body>
</html>