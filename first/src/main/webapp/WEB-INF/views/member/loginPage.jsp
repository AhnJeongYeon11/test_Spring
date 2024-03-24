<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../common/error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
h1 {
	font-size: 48pt;
	color: navy;
}
div {
	width: 500px;
	height: 200px;
	border: 2px solid navy;
	position: relative;
	left: 200px;
}
div form {
	font-size: 16pt;
	color: navy;
	font-weight: bold;
	margin: 10px;
	padding: 10px;
}
div#loginForm form input.pos {
	position: absolute;
	left: 120px;
	width: 300px;
	height: 25px;
}
div#loginForm form input[type=submit] {
	margin: 10px;
	width: 250px;
	height: 40px;
	position: absolute;
	left: 120px;
	background: navy;
	color: white;
	font-size: 16pt;
	font-weight: bold;
}
</style>
</head>
<body>
<h1 align=>first 로그인</h1>
<div id="loginForm">
	<form action="login.do" method="post">
	<label>아이디 : <input type="text" name="userId" id="uid" class="pos"></label>
	<br>
	<label>암 호 : <input type="password" name="userPwd" id="upwd" class="pos"></label>
	<br>
	<input type="submit" value="로그인">
	</form>
</div>
</body>
</body>
</html>