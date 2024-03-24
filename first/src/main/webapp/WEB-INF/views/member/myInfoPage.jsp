<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
	table th { background-color: #9ff; }
	table#outer { border: 2px solid navy; }
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/menubar.jsp" />
<hr>
<h1 align="center">내 정보 보기 : 마이 페이지</h1>
<br>
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
	<tr><th colspan="2">등록된 회원정보는 아래와 같습니다.<br> 
	수정할 내용이 있으면 '수정페이지로 이동' 버튼을 누르세요.</th></tr>
	<tr><th width="120">아이디</th><td>${ member.userId } </td></tr>	
	<tr><th>이름</th><td>${ member.userName }</td></tr>
	<tr><th>성별</th><td>${ member.gender eq "M"? "남자": "여자" }</td></tr>
	<tr><th>나이</th><td>${ member.age }</td></tr>
	<tr><th>전화번호</th><td>${ member.phone  }</td></tr>
	<tr><th>이메일</th><td>${member.email  }</td></tr>	
	<tr><th colspan="2">
		<c:url var = "moveUp" value="moveup.do">
		<c:param name="userId" value="${ member.userId }" />
		
		</c:url>
		<button onclick="javascript:location.href='${ moveUp }';">수정페이지로 이동</button> &nbsp;
		&nbsp;
		<a href="main.do">시작페이지로 이동</a>
	</th></tr>
</table>
<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />

</body>
</html>