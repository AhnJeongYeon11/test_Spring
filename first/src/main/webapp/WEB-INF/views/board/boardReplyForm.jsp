<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/menubar.jsp" />
<hr>

<h1 align="center">${ requestScope.bnum }번글 댓글 | 대댓글 등록 페이지</h1>
<br>

<form action="breply.do" method="post">
	<input type="hidden" name="bnum" value="${ requestScope.bnum }">
	<input type="hidden" name="page" value="${ requestScope.currentPage }">

<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<tr>
		<th>제 목</th>
		<td><input type="text" name="boardTitle" size="50"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" name="boardWriter" readonly value="${ sessionScope.loginMember.userId }"></td>
	</tr>	
	<tr>
		<th>내 용</th>
		<td><textarea rows="5" cols="50" name="boardContent"></textarea></td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="등록하기"> &nbsp; 
			<input type="reset" value="작성취소"> &nbsp;
			<input type="button" value="목록" 
			onclick="javascript:location.href='blist.do?page=${ requestScope.currentPage }'; return false;">
		</th>		
	</tr>
</table>
</form>
s<br>

<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>